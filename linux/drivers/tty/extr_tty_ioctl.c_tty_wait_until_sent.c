
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; int write_wait; } ;
struct TYPE_2__ {int (* wait_until_sent ) (struct tty_struct*,long) ;} ;


 long MAX_SCHEDULE_TIMEOUT ;
 int stub1 (struct tty_struct*,long) ;
 int tty_chars_in_buffer (struct tty_struct*) ;
 int tty_debug_wait_until_sent (struct tty_struct*,char*,long) ;
 long wait_event_interruptible_timeout (int ,int,long) ;

void tty_wait_until_sent(struct tty_struct *tty, long timeout)
{
 tty_debug_wait_until_sent(tty, "wait until sent, timeout=%ld\n", timeout);

 if (!timeout)
  timeout = MAX_SCHEDULE_TIMEOUT;

 timeout = wait_event_interruptible_timeout(tty->write_wait,
   !tty_chars_in_buffer(tty), timeout);
 if (timeout <= 0)
  return;

 if (timeout == MAX_SCHEDULE_TIMEOUT)
  timeout = 0;

 if (tty->ops->wait_until_sent)
  tty->ops->wait_until_sent(tty, timeout);
}
