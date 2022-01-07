
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct tty_struct {int winsize_mutex; struct winsize winsize; } ;
struct pid {int dummy; } ;


 int SIGWINCH ;
 int kill_pgrp (struct pid*,int ,int) ;
 int memcmp (struct winsize*,struct winsize*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_pid (struct pid*) ;
 struct pid* tty_get_pgrp (struct tty_struct*) ;

int tty_do_resize(struct tty_struct *tty, struct winsize *ws)
{
 struct pid *pgrp;


 mutex_lock(&tty->winsize_mutex);
 if (!memcmp(ws, &tty->winsize, sizeof(*ws)))
  goto done;


 pgrp = tty_get_pgrp(tty);
 if (pgrp)
  kill_pgrp(pgrp, SIGWINCH, 1);
 put_pid(pgrp);

 tty->winsize = *ws;
done:
 mutex_unlock(&tty->winsize_mutex);
 return 0;
}
