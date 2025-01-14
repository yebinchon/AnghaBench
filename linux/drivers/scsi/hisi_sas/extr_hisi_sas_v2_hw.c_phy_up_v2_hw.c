
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sas_identify_frame {scalar_t__ dev_type; int sas_addr; } ;
struct TYPE_2__ {scalar_t__ device_type; int target_port_protocols; } ;
struct asd_sas_phy {int linkrate; int attached_sas_addr; int oob_mode; scalar_t__ frame_rcvd; } ;
struct hisi_sas_phy {int port_id; int phy_type; int phy_attached; int frame_rcvd_size; int lock; scalar_t__ reset_completion; scalar_t__ in_reset; TYPE_1__ identify; int timer; struct asd_sas_phy sas_phy; } ;
struct hisi_hba {int timer; struct device* dev; struct hisi_sas_phy* phy; } ;
struct device {int dummy; } ;


 int CHL_INT0 ;
 int CHL_INT0_SL_PHY_ENABLE_MSK ;
 int HISI_PHYE_PHY_UP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PHYCTRL_PHY_ENA_MSK ;
 int PHY_CONN_RATE ;
 int PHY_PORT_NUM_MA ;
 int PORT_STATE ;
 int PORT_STATE_PHY8_CONN_RATE_MSK ;
 int PORT_STATE_PHY8_CONN_RATE_OFF ;
 int PORT_STATE_PHY8_PORT_NUM_MSK ;
 int PORT_STATE_PHY8_PORT_NUM_OFF ;
 int PORT_TYPE_SAS ;
 int PORT_TYPE_SATA ;
 scalar_t__ RX_IDAF_DWORD0 ;
 int SAS_ADDR_SIZE ;
 scalar_t__ SAS_END_DEVICE ;
 int SAS_OOB_MODE ;
 scalar_t__ SAS_PHY_UNUSED ;
 int SAS_PROTOCOL_SMP ;
 int SAS_PROTOCOL_SSP ;
 int __swab32 (int) ;
 int complete (scalar_t__) ;
 int del_timer (int *) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int,int) ;
 int hisi_sas_notify_phy_event (struct hisi_sas_phy*,int ) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,scalar_t__) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;
 scalar_t__ is_sata_phy_v2_hw (struct hisi_hba*,int) ;
 int memcpy (int ,int *,int ) ;
 int set_link_timer_quirk (struct hisi_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;

__attribute__((used)) static int phy_up_v2_hw(int phy_no, struct hisi_hba *hisi_hba)
{
 int i, res = IRQ_HANDLED;
 u32 port_id, link_rate;
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 struct device *dev = hisi_hba->dev;
 u32 *frame_rcvd = (u32 *)sas_phy->frame_rcvd;
 struct sas_identify_frame *id = (struct sas_identify_frame *)frame_rcvd;
 unsigned long flags;

 hisi_sas_phy_write32(hisi_hba, phy_no, PHYCTRL_PHY_ENA_MSK, 1);

 if (is_sata_phy_v2_hw(hisi_hba, phy_no))
  goto end;

 del_timer(&phy->timer);

 if (phy_no == 8) {
  u32 port_state = hisi_sas_read32(hisi_hba, PORT_STATE);

  port_id = (port_state & PORT_STATE_PHY8_PORT_NUM_MSK) >>
     PORT_STATE_PHY8_PORT_NUM_OFF;
  link_rate = (port_state & PORT_STATE_PHY8_CONN_RATE_MSK) >>
       PORT_STATE_PHY8_CONN_RATE_OFF;
 } else {
  port_id = hisi_sas_read32(hisi_hba, PHY_PORT_NUM_MA);
  port_id = (port_id >> (4 * phy_no)) & 0xf;
  link_rate = hisi_sas_read32(hisi_hba, PHY_CONN_RATE);
  link_rate = (link_rate >> (phy_no * 4)) & 0xf;
 }

 if (port_id == 0xf) {
  dev_err(dev, "phyup: phy%d invalid portid\n", phy_no);
  res = IRQ_NONE;
  goto end;
 }

 for (i = 0; i < 6; i++) {
  u32 idaf = hisi_sas_phy_read32(hisi_hba, phy_no,
            RX_IDAF_DWORD0 + (i * 4));
  frame_rcvd[i] = __swab32(idaf);
 }

 sas_phy->linkrate = link_rate;
 sas_phy->oob_mode = SAS_OOB_MODE;
 memcpy(sas_phy->attached_sas_addr, &id->sas_addr, SAS_ADDR_SIZE);
 dev_info(dev, "phyup: phy%d link_rate=%d\n", phy_no, link_rate);
 phy->port_id = port_id;
 phy->phy_type &= ~(PORT_TYPE_SAS | PORT_TYPE_SATA);
 phy->phy_type |= PORT_TYPE_SAS;
 phy->phy_attached = 1;
 phy->identify.device_type = id->dev_type;
 phy->frame_rcvd_size = sizeof(struct sas_identify_frame);
 if (phy->identify.device_type == SAS_END_DEVICE)
  phy->identify.target_port_protocols =
   SAS_PROTOCOL_SSP;
 else if (phy->identify.device_type != SAS_PHY_UNUSED) {
  phy->identify.target_port_protocols =
   SAS_PROTOCOL_SMP;
  if (!timer_pending(&hisi_hba->timer))
   set_link_timer_quirk(hisi_hba);
 }
 hisi_sas_notify_phy_event(phy, HISI_PHYE_PHY_UP);
 spin_lock_irqsave(&phy->lock, flags);
 if (phy->reset_completion) {
  phy->in_reset = 0;
  complete(phy->reset_completion);
 }
 spin_unlock_irqrestore(&phy->lock, flags);

end:
 hisi_sas_phy_write32(hisi_hba, phy_no, CHL_INT0,
        CHL_INT0_SL_PHY_ENABLE_MSK);
 hisi_sas_phy_write32(hisi_hba, phy_no, PHYCTRL_PHY_ENA_MSK, 0);

 return res;
}
