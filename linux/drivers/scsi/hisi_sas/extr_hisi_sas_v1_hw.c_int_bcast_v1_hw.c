
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_ha_struct {int (* notify_port_event ) (struct asd_sas_phy*,int ) ;} ;
struct asd_sas_phy {int id; } ;
struct hisi_sas_phy {struct asd_sas_phy sas_phy; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {int flags; struct device* dev; struct sas_ha_struct sha; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int CHL_INT2 ;
 int CHL_INT2_SL_RX_BC_ACK_MSK ;
 int HISI_SAS_RESET_BIT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PORTE_BROADCAST_RCVD ;
 int dev_err (struct device*,char*,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int stub1 (struct asd_sas_phy*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t int_bcast_v1_hw(int irq, void *p)
{
 struct hisi_sas_phy *phy = p;
 struct hisi_hba *hisi_hba = phy->hisi_hba;
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 struct sas_ha_struct *sha = &hisi_hba->sha;
 struct device *dev = hisi_hba->dev;
 int phy_no = sas_phy->id;
 u32 irq_value;
 irqreturn_t res = IRQ_HANDLED;

 irq_value = hisi_sas_phy_read32(hisi_hba, phy_no, CHL_INT2);

 if (!(irq_value & CHL_INT2_SL_RX_BC_ACK_MSK)) {
  dev_err(dev, "bcast: irq_value = %x not set enable bit",
   irq_value);
  res = IRQ_NONE;
  goto end;
 }

 if (!test_bit(HISI_SAS_RESET_BIT, &hisi_hba->flags))
  sha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);

end:
 hisi_sas_phy_write32(hisi_hba, phy_no, CHL_INT2,
        CHL_INT2_SL_RX_BC_ACK_MSK);

 return res;
}
