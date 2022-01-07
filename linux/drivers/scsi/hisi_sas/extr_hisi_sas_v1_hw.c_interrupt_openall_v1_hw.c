
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int n_phy; } ;


 int CHL_INT0 ;
 int CHL_INT0_MSK ;
 int CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK ;
 int CHL_INT1 ;
 int CHL_INT1_MSK ;
 int CHL_INT2 ;
 int CHL_INT2_MSK ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;

__attribute__((used)) static int interrupt_openall_v1_hw(struct hisi_hba *hisi_hba)
{
 int i;
 u32 val;

 for (i = 0; i < hisi_hba->n_phy; i++) {

  val = hisi_sas_phy_read32(hisi_hba, i, CHL_INT0);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT0, val);
  val = hisi_sas_phy_read32(hisi_hba, i, CHL_INT1);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT1, val);
  val = hisi_sas_phy_read32(hisi_hba, i, CHL_INT2);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT2, val);


  hisi_sas_phy_write32(hisi_hba, i, CHL_INT0_MSK, 0x3ce3ee);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT1_MSK, 0x17fff);
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT2_MSK, 0x8000012a);


  hisi_sas_phy_write32(hisi_hba, i, CHL_INT0_MSK,
    0x3fffff & ~CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK);
 }

 return 0;
}
