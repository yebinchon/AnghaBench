
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;
 int xs_state_exit_wq ;
 int xs_state_lock ;
 scalar_t__ xs_state_users ;
 int xs_suspend_active ;

__attribute__((used)) static void xs_suspend_enter(void)
{
 spin_lock(&xs_state_lock);
 xs_suspend_active++;
 spin_unlock(&xs_state_lock);
 wait_event(xs_state_exit_wq, xs_state_users == 0);
}
