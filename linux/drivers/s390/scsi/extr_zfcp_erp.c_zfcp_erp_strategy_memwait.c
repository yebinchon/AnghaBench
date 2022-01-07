
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct zfcp_erp_action {TYPE_1__ timer; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int timer_setup (TYPE_1__*,int ,int ) ;
 int zfcp_erp_memwait_handler ;

__attribute__((used)) static void zfcp_erp_strategy_memwait(struct zfcp_erp_action *erp_action)
{
 timer_setup(&erp_action->timer, zfcp_erp_memwait_handler, 0);
 erp_action->timer.expires = jiffies + HZ;
 add_timer(&erp_action->timer);
}
