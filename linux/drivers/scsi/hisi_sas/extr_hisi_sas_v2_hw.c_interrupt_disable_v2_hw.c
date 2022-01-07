
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hisi_hba {int queue_count; int n_phy; struct platform_device* platform_dev; } ;


 int CHL_INT1_MSK ;
 int CHL_INT2_MSK ;
 scalar_t__ ENT_INT_SRC_MSK1 ;
 scalar_t__ ENT_INT_SRC_MSK2 ;
 scalar_t__ ENT_INT_SRC_MSK3 ;
 scalar_t__ OQ0_INT_SRC_MSK ;
 scalar_t__ SAS_ECC_INTR_MSK ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int hisi_sas_write32 (struct hisi_hba*,scalar_t__,int) ;
 int platform_get_irq (struct platform_device*,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void interrupt_disable_v2_hw(struct hisi_hba *hisi_hba)
{
 struct platform_device *pdev = hisi_hba->platform_dev;
 int i;

 for (i = 0; i < hisi_hba->queue_count; i++)
  hisi_sas_write32(hisi_hba, OQ0_INT_SRC_MSK + 0x4 * i, 0x1);

 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK1, 0xffffffff);
 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK2, 0xffffffff);
 hisi_sas_write32(hisi_hba, ENT_INT_SRC_MSK3, 0xffffffff);
 hisi_sas_write32(hisi_hba, SAS_ECC_INTR_MSK, 0xffffffff);

 for (i = 0; i < hisi_hba->n_phy; i++) {
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT1_MSK, 0xffffffff);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT2_MSK, 0xffffffff);
 }

 for (i = 0; i < 128; i++)
  synchronize_irq(platform_get_irq(pdev, i));
}
