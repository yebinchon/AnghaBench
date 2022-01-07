
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct pqi_ctrl_info {TYPE_1__ heartbeat_timer; int previous_heartbeat_count; int num_interrupts; int previous_num_interrupts; int heartbeat_counter; } ;


 scalar_t__ PQI_HEARTBEAT_TIMER_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 int atomic_read (int *) ;
 scalar_t__ jiffies ;
 int pqi_read_heartbeat_counter (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_start_heartbeat_timer(struct pqi_ctrl_info *ctrl_info)
{
 if (!ctrl_info->heartbeat_counter)
  return;

 ctrl_info->previous_num_interrupts =
  atomic_read(&ctrl_info->num_interrupts);
 ctrl_info->previous_heartbeat_count =
  pqi_read_heartbeat_counter(ctrl_info);

 ctrl_info->heartbeat_timer.expires =
  jiffies + PQI_HEARTBEAT_TIMER_INTERVAL;
 add_timer(&ctrl_info->heartbeat_timer);
}
