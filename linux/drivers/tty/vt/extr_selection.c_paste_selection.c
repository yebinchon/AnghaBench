
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int port; int paste_wait; } ;
struct tty_struct {struct vc_data* driver_data; } ;
struct tty_ldisc {int dummy; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EIO ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int console_lock () ;
 int console_unlock () ;
 int current ;
 int poke_blanked_console () ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 scalar_t__ sel_buffer ;
 int sel_buffer_lth ;
 int set_current_state (int ) ;
 int tty_buffer_lock_exclusive (int *) ;
 int tty_buffer_unlock_exclusive (int *) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 unsigned int tty_ldisc_receive_buf (struct tty_ldisc*,scalar_t__,int *,unsigned int) ;
 struct tty_ldisc* tty_ldisc_ref_wait (struct tty_struct*) ;
 scalar_t__ tty_throttled (struct tty_struct*) ;
 int wait ;

int paste_selection(struct tty_struct *tty)
{
 struct vc_data *vc = tty->driver_data;
 int pasted = 0;
 unsigned int count;
 struct tty_ldisc *ld;
 DECLARE_WAITQUEUE(wait, current);

 console_lock();
 poke_blanked_console();
 console_unlock();

 ld = tty_ldisc_ref_wait(tty);
 if (!ld)
  return -EIO;
 tty_buffer_lock_exclusive(&vc->port);

 add_wait_queue(&vc->paste_wait, &wait);
 while (sel_buffer && sel_buffer_lth > pasted) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (tty_throttled(tty)) {
   schedule();
   continue;
  }
  __set_current_state(TASK_RUNNING);
  count = sel_buffer_lth - pasted;
  count = tty_ldisc_receive_buf(ld, sel_buffer + pasted, ((void*)0),
           count);
  pasted += count;
 }
 remove_wait_queue(&vc->paste_wait, &wait);
 __set_current_state(TASK_RUNNING);

 tty_buffer_unlock_exclusive(&vc->port);
 tty_ldisc_deref(ld);
 return 0;
}
