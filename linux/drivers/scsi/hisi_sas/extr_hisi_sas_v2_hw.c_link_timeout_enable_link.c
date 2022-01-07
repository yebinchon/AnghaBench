
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int function; } ;
struct hisi_hba {int n_phy; int reject_stp_links_msk; TYPE_1__ timer; } ;


 int BIT (int) ;
 int CON_CONTROL ;
 struct hisi_hba* from_timer (int ,struct timer_list*,int ) ;
 struct hisi_hba* hisi_hba ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int) ;
 scalar_t__ jiffies ;
 int link_timeout_disable_link ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer ;

__attribute__((used)) static void link_timeout_enable_link(struct timer_list *t)
{
 struct hisi_hba *hisi_hba = from_timer(hisi_hba, t, timer);
 int i, reg_val;

 for (i = 0; i < hisi_hba->n_phy; i++) {
  if (hisi_hba->reject_stp_links_msk & BIT(i))
   continue;

  reg_val = hisi_sas_phy_read32(hisi_hba, i, CON_CONTROL);
  if (!(reg_val & BIT(0))) {
   hisi_sas_phy_write32(hisi_hba, i,
     CON_CONTROL, 0x7);
   break;
  }
 }

 hisi_hba->timer.function = link_timeout_disable_link;
 mod_timer(&hisi_hba->timer, jiffies + msecs_to_jiffies(900));
}
