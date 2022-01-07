
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;
 int xb_dev_generation_id ;
 int xs_state_enter_wq ;
 int xs_state_lock ;
 int xs_suspend_active ;

__attribute__((used)) static void xs_suspend_exit(void)
{
 xb_dev_generation_id++;
 spin_lock(&xs_state_lock);
 xs_suspend_active--;
 spin_unlock(&xs_state_lock);
 wake_up_all(&xs_state_enter_wq);
}
