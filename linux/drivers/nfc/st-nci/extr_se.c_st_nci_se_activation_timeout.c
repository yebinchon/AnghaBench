
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int se_active; int req_completion; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct TYPE_4__ {int se_active_timer; } ;


 int complete (int *) ;
 struct st_nci_info* from_timer (int ,struct timer_list*,int ) ;
 struct st_nci_info* info ;
 int pr_debug (char*) ;
 TYPE_2__ se_info ;

__attribute__((used)) static void st_nci_se_activation_timeout(struct timer_list *t)
{
 struct st_nci_info *info = from_timer(info, t,
           se_info.se_active_timer);

 pr_debug("\n");

 info->se_info.se_active = 0;

 complete(&info->se_info.req_completion);
}
