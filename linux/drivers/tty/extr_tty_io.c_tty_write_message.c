
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ count; TYPE_1__* ops; int atomic_write_lock; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,char*,int ) ;} ;


 int mutex_lock (int *) ;
 int strlen (char*) ;
 int stub1 (struct tty_struct*,char*,int ) ;
 int tty_lock (struct tty_struct*) ;
 int tty_unlock (struct tty_struct*) ;
 int tty_write_unlock (struct tty_struct*) ;

void tty_write_message(struct tty_struct *tty, char *msg)
{
 if (tty) {
  mutex_lock(&tty->atomic_write_lock);
  tty_lock(tty);
  if (tty->ops->write && tty->count > 0)
   tty->ops->write(tty, msg, strlen(msg));
  tty_unlock(tty);
  tty_write_unlock(tty);
 }
 return;
}
