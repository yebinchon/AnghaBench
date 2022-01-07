
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int PHY_CONTEXT ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;

__attribute__((used)) static bool is_sata_phy_v2_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 context;

 context = hisi_sas_read32(hisi_hba, PHY_CONTEXT);
 if (context & (1 << phy_no))
  return 1;

 return 0;
}
