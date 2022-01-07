
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_phy_linkrates {int maximum_linkrate; } ;
struct hisi_hba {int dummy; } ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;


 int PROG_PHY_LINK_RATE ;
 int hisi_sas_get_prog_phy_linkrate_mask (int) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;

__attribute__((used)) static void phy_set_linkrate_v1_hw(struct hisi_hba *hisi_hba, int phy_no,
  struct sas_phy_linkrates *r)
{
 enum sas_linkrate max = r->maximum_linkrate;
 u32 prog_phy_link_rate = 0x800;

 prog_phy_link_rate |= hisi_sas_get_prog_phy_linkrate_mask(max);
 hisi_sas_phy_write32(hisi_hba, phy_no, PROG_PHY_LINK_RATE,
        prog_phy_link_rate);
}
