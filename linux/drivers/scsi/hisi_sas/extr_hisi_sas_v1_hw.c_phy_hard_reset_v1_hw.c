
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int dummy; } ;


 int hisi_sas_phy_enable (struct hisi_hba*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void phy_hard_reset_v1_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 hisi_sas_phy_enable(hisi_hba, phy_no, 0);
 msleep(100);
 hisi_sas_phy_enable(hisi_hba, phy_no, 1);
}
