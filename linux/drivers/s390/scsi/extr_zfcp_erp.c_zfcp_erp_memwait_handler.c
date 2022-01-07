
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int dummy; } ;
struct timer_list {int dummy; } ;


 struct zfcp_erp_action* act ;
 struct zfcp_erp_action* from_timer (int ,struct timer_list*,int ) ;
 int timer ;
 int zfcp_erp_notify (struct zfcp_erp_action*,int ) ;

__attribute__((used)) static void zfcp_erp_memwait_handler(struct timer_list *t)
{
 struct zfcp_erp_action *act = from_timer(act, t, timer);

 zfcp_erp_notify(act, 0);
}
