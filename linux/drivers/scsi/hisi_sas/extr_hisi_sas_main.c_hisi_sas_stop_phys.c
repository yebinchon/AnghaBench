
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int n_phy; } ;


 int hisi_sas_phy_enable (struct hisi_hba*,int,int ) ;

void hisi_sas_stop_phys(struct hisi_hba *hisi_hba)
{
 int phy_no;

 for (phy_no = 0; phy_no < hisi_hba->n_phy; phy_no++)
  hisi_sas_phy_enable(hisi_hba, phy_no, 0);
}
