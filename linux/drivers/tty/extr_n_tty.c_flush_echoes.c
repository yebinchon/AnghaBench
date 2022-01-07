
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ echo_commit; scalar_t__ echo_head; int output_lock; } ;


 int L_ECHO (struct tty_struct*) ;
 int L_ECHONL (struct tty_struct*) ;
 int __process_echoes (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void flush_echoes(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;

 if ((!L_ECHO(tty) && !L_ECHONL(tty)) ||
     ldata->echo_commit == ldata->echo_head)
  return;

 mutex_lock(&ldata->output_lock);
 ldata->echo_commit = ldata->echo_head;
 __process_echoes(tty);
 mutex_unlock(&ldata->output_lock);
}
