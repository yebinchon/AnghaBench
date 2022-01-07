
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_arm_state {scalar_t__ suspend_timer_running; int suspend_timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static inline void
stop_suspend_timer(struct vchiq_arm_state *arm_state)
{
 if (arm_state->suspend_timer_running) {
  del_timer(&arm_state->suspend_timer);
  arm_state->suspend_timer_running = 0;
 }
}
