
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_sas_hw_error {int irq_msk; int msg; } ;
struct hisi_hba {int rst_work; int wq; struct device* dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct hisi_sas_hw_error*) ;
 int CHL_INT1 ;
 int CHL_INT1_MSK ;
 int dev_err (struct device*,char*,int ,int,int) ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 struct hisi_sas_hw_error* port_axi_error ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void handle_chl_int1_v3_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 irq_value = hisi_sas_phy_read32(hisi_hba, phy_no, CHL_INT1);
 u32 irq_msk = hisi_sas_phy_read32(hisi_hba, phy_no, CHL_INT1_MSK);
 struct device *dev = hisi_hba->dev;
 int i;

 irq_value &= ~irq_msk;
 if (!irq_value)
  return;

 for (i = 0; i < ARRAY_SIZE(port_axi_error); i++) {
  const struct hisi_sas_hw_error *error = &port_axi_error[i];

  if (!(irq_value & error->irq_msk))
   continue;

  dev_err(dev, "%s error (phy%d 0x%x) found!\n",
   error->msg, phy_no, irq_value);
  queue_work(hisi_hba->wq, &hisi_hba->rst_work);
 }

 hisi_sas_phy_write32(hisi_hba, phy_no, CHL_INT1, irq_value);
}
