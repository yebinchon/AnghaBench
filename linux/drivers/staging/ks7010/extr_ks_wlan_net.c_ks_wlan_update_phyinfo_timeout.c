
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int atomic_set (int *,int ) ;
 int in_interrupt () ;
 int pr_debug (char*,int ) ;
 int update_phyinfo ;

__attribute__((used)) static
void ks_wlan_update_phyinfo_timeout(struct timer_list *unused)
{
 pr_debug("in_interrupt = %ld\n", in_interrupt());
 atomic_set(&update_phyinfo, 0);
}
