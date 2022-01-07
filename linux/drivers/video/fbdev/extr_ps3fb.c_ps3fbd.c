
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_kicked; } ;


 int TASK_INTERRUPTIBLE ;
 int console_lock () ;
 int console_unlock () ;
 int kthread_should_stop () ;
 TYPE_1__ ps3fb ;
 int ps3fb_sync (struct fb_info*,int ) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int try_to_freeze () ;

__attribute__((used)) static int ps3fbd(void *arg)
{
 struct fb_info *info = arg;

 set_freezable();
 while (!kthread_should_stop()) {
  try_to_freeze();
  set_current_state(TASK_INTERRUPTIBLE);
  if (ps3fb.is_kicked) {
   ps3fb.is_kicked = 0;
   console_lock();
   ps3fb_sync(info, 0);
   console_unlock();
  }
  schedule();
 }
 return 0;
}
