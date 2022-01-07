
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int num_blocked_threads; int block_requests_wait; } ;


 unsigned long NO_TIMEOUT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 unsigned long jiffies_to_msecs (unsigned long) ;
 int msecs_to_jiffies (unsigned long) ;
 int pqi_ctrl_blocked (struct pqi_ctrl_info*) ;
 int wait_event (int ,int) ;
 unsigned long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static unsigned long pqi_wait_if_ctrl_blocked(struct pqi_ctrl_info *ctrl_info,
 unsigned long timeout_msecs)
{
 unsigned long remaining_msecs;

 if (!pqi_ctrl_blocked(ctrl_info))
  return timeout_msecs;

 atomic_inc(&ctrl_info->num_blocked_threads);

 if (timeout_msecs == NO_TIMEOUT) {
  wait_event(ctrl_info->block_requests_wait,
   !pqi_ctrl_blocked(ctrl_info));
  remaining_msecs = timeout_msecs;
 } else {
  unsigned long remaining_jiffies;

  remaining_jiffies =
   wait_event_timeout(ctrl_info->block_requests_wait,
    !pqi_ctrl_blocked(ctrl_info),
    msecs_to_jiffies(timeout_msecs));
  remaining_msecs = jiffies_to_msecs(remaining_jiffies);
 }

 atomic_dec(&ctrl_info->num_blocked_threads);

 return remaining_msecs;
}
