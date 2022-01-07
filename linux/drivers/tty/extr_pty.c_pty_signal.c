
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ link; } ;
struct pid {int dummy; } ;


 int EINVAL ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTSTP ;
 int kill_pgrp (struct pid*,int,int) ;
 int put_pid (struct pid*) ;
 struct pid* tty_get_pgrp (scalar_t__) ;

__attribute__((used)) static int pty_signal(struct tty_struct *tty, int sig)
{
 struct pid *pgrp;

 if (sig != SIGINT && sig != SIGQUIT && sig != SIGTSTP)
  return -EINVAL;

 if (tty->link) {
  pgrp = tty_get_pgrp(tty->link);
  if (pgrp)
   kill_pgrp(pgrp, sig, 1);
  put_pid(pgrp);
 }
 return 0;
}
