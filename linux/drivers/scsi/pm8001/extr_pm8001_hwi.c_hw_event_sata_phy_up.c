
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct sas_ha_struct {int (* notify_phy_event ) (TYPE_2__*,int ) ;} ;
struct pm8001_port {size_t port_state; int port_attached; } ;
struct TYPE_4__ {int frame_rcvd_lock; int attached_sas_addr; int oob_mode; } ;
struct TYPE_3__ {int device_type; int target_port_protocols; } ;
struct pm8001_phy {int phy_attached; int frame_rcvd_size; TYPE_2__ sas_phy; TYPE_1__ identify; int frame_rcvd; int phy_type; int phy_state; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; struct sas_ha_struct* sas; struct pm8001_port* port; } ;
struct hw_event_resp {int sata_fis; int npip_portstate; int lr_evt_status_phyid_portid; } ;
struct dev_to_host_fis {int dummy; } ;


 int PHYE_OOB_DONE ;
 int PHY_STATE_LINK_UP_SPC ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int PORT_TYPE_SATA ;
 int SAS_PROTOCOL_SATA ;
 int SAS_SATA_DEV ;
 int SATA_OOB_MODE ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,size_t*,int) ;
 int pm8001_bytes_dmaed (struct pm8001_hba_info*,size_t) ;
 int pm8001_get_attached_sas_addr (struct pm8001_phy*,int ) ;
 int pm8001_get_lrate_mode (struct pm8001_phy*,size_t) ;
 int pm8001_printk (char*,size_t,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void
hw_event_sata_phy_up(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct hw_event_resp *pPayload =
  (struct hw_event_resp *)(piomb + 4);
 u32 lr_evt_status_phyid_portid =
  le32_to_cpu(pPayload->lr_evt_status_phyid_portid);
 u8 link_rate =
  (u8)((lr_evt_status_phyid_portid & 0xF0000000) >> 28);
 u8 port_id = (u8)(lr_evt_status_phyid_portid & 0x0000000F);
 u8 phy_id =
  (u8)((lr_evt_status_phyid_portid & 0x000000F0) >> 4);
 u32 npip_portstate = le32_to_cpu(pPayload->npip_portstate);
 u8 portstate = (u8)(npip_portstate & 0x0000000F);
 struct pm8001_port *port = &pm8001_ha->port[port_id];
 struct sas_ha_struct *sas_ha = pm8001_ha->sas;
 struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
 unsigned long flags;
 PM8001_MSG_DBG(pm8001_ha,
  pm8001_printk("HW_EVENT_SATA_PHY_UP port id = %d,"
  " phy id = %d\n", port_id, phy_id));
 port->port_state = portstate;
 phy->phy_state = PHY_STATE_LINK_UP_SPC;
 port->port_attached = 1;
 pm8001_get_lrate_mode(phy, link_rate);
 phy->phy_type |= PORT_TYPE_SATA;
 phy->phy_attached = 1;
 phy->sas_phy.oob_mode = SATA_OOB_MODE;
 sas_ha->notify_phy_event(&phy->sas_phy, PHYE_OOB_DONE);
 spin_lock_irqsave(&phy->sas_phy.frame_rcvd_lock, flags);
 memcpy(phy->frame_rcvd, ((u8 *)&pPayload->sata_fis - 4),
  sizeof(struct dev_to_host_fis));
 phy->frame_rcvd_size = sizeof(struct dev_to_host_fis);
 phy->identify.target_port_protocols = SAS_PROTOCOL_SATA;
 phy->identify.device_type = SAS_SATA_DEV;
 pm8001_get_attached_sas_addr(phy, phy->sas_phy.attached_sas_addr);
 spin_unlock_irqrestore(&phy->sas_phy.frame_rcvd_lock, flags);
 pm8001_bytes_dmaed(pm8001_ha, phy_id);
}
