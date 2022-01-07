
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hisi_hba {int n_phy; struct timer_list timer; } ;


 int CHL_INT2_MSK ;
 scalar_t__ HZ ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 int start_phys_v1_hw ;
 int timer_setup (struct timer_list*,int ,int ) ;

__attribute__((used)) static void phys_init_v1_hw(struct hisi_hba *hisi_hba)
{
 int i;
 struct timer_list *timer = &hisi_hba->timer;

 for (i = 0; i < hisi_hba->n_phy; i++) {
  hisi_sas_phy_write32(hisi_hba, i, CHL_INT2_MSK, 0x6a);
  hisi_sas_phy_read32(hisi_hba, i, CHL_INT2_MSK);
 }

 timer_setup(timer, start_phys_v1_hw, 0);
 mod_timer(timer, jiffies + HZ);
}
