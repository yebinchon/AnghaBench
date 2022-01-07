
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; int function; } ;
struct hisi_hba {TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int link_timeout_disable_link ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void set_link_timer_quirk(struct hisi_hba *hisi_hba)
{
 hisi_hba->timer.function = link_timeout_disable_link;
 hisi_hba->timer.expires = jiffies + msecs_to_jiffies(1000);
 add_timer(&hisi_hba->timer);
}
