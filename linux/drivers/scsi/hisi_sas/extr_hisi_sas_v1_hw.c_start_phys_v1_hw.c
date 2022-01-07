
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hisi_hba {int n_phy; } ;


 int CHL_INT2_MSK ;
 struct hisi_hba* from_timer (int ,struct timer_list*,int ) ;
 struct hisi_hba* hisi_hba ;
 int hisi_sas_phy_enable (struct hisi_hba*,int,int) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 int timer ;

__attribute__((used)) static void start_phys_v1_hw(struct timer_list *t)
{
 struct hisi_hba *hisi_hba = from_timer(hisi_hba, t, timer);
 int i;

 for (i = 0; i < hisi_hba->n_phy; i++) {
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT2_MSK, 0x12a);
  hisi_sas_phy_enable(hisi_hba, i, 1);
 }
}
