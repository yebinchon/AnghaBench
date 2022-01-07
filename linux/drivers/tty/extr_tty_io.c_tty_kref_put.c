
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int kref; } ;


 int kref_put (int *,int ) ;
 int queue_release_one_tty ;

void tty_kref_put(struct tty_struct *tty)
{
 if (tty)
  kref_put(&tty->kref, queue_release_one_tty);
}
