
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int link; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ TTY_DRIVER_TYPE_PTY ;
 scalar_t__ TTY_THRESHOLD_UNTHROTTLE ;
 int TTY_UNTHROTTLE_SAFE ;
 int __tty_set_flow_change (struct tty_struct*,int ) ;
 scalar_t__ chars_in_buffer (struct tty_struct*) ;
 int n_tty_kick_worker (struct tty_struct*) ;
 int tty_set_flow_change (struct tty_struct*,int ) ;
 int tty_unthrottle_safe (struct tty_struct*) ;
 int tty_wakeup (int ) ;

__attribute__((used)) static void n_tty_check_unthrottle(struct tty_struct *tty)
{
 if (tty->driver->type == TTY_DRIVER_TYPE_PTY) {
  if (chars_in_buffer(tty) > TTY_THRESHOLD_UNTHROTTLE)
   return;
  n_tty_kick_worker(tty);
  tty_wakeup(tty->link);
  return;
 }
 while (1) {
  int unthrottled;
  tty_set_flow_change(tty, TTY_UNTHROTTLE_SAFE);
  if (chars_in_buffer(tty) > TTY_THRESHOLD_UNTHROTTLE)
   break;
  n_tty_kick_worker(tty);
  unthrottled = tty_unthrottle_safe(tty);
  if (!unthrottled)
   break;
 }
 __tty_set_flow_change(tty, 0);
}
