
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct vchiq_arm_state {int suspend_timer_running; TYPE_1__ suspend_timer; int suspend_timer_timeout; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;

inline void
start_suspend_timer(struct vchiq_arm_state *arm_state)
{
 del_timer(&arm_state->suspend_timer);
 arm_state->suspend_timer.expires = jiffies +
  msecs_to_jiffies(arm_state->suspend_timer_timeout);
 add_timer(&arm_state->suspend_timer);
 arm_state->suspend_timer_running = 1;
}
