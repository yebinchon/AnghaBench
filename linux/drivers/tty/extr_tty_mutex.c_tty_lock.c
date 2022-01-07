
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ magic; int legacy_mutex; } ;


 scalar_t__ TTY_MAGIC ;
 scalar_t__ WARN (int,char*,struct tty_struct*) ;
 int mutex_lock (int *) ;
 int tty_kref_get (struct tty_struct*) ;

void tty_lock(struct tty_struct *tty)
{
 if (WARN(tty->magic != TTY_MAGIC, "L Bad %p\n", tty))
  return;
 tty_kref_get(tty);
 mutex_lock(&tty->legacy_mutex);
}
