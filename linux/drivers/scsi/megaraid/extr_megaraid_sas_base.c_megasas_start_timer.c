
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ expires; } ;
struct megasas_instance {struct timer_list sriov_heartbeat_timer; } ;


 scalar_t__ MEGASAS_SRIOV_HEARTBEAT_INTERVAL_VF ;
 int add_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 int megasas_sriov_heartbeat_handler ;
 int timer_setup (struct timer_list*,int ,int ) ;

void megasas_start_timer(struct megasas_instance *instance)
{
 struct timer_list *timer = &instance->sriov_heartbeat_timer;

 timer_setup(timer, megasas_sriov_heartbeat_handler, 0);
 timer->expires = jiffies + MEGASAS_SRIOV_HEARTBEAT_INTERVAL_VF;
 add_timer(timer);
}
