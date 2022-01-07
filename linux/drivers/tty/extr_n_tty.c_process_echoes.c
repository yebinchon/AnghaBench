
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ echo_mark; scalar_t__ echo_tail; scalar_t__ echo_commit; int output_lock; } ;
struct TYPE_2__ {int (* flush_chars ) (struct tty_struct*) ;} ;


 size_t __process_echoes (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*) ;

__attribute__((used)) static void process_echoes(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;
 size_t echoed;

 if (ldata->echo_mark == ldata->echo_tail)
  return;

 mutex_lock(&ldata->output_lock);
 ldata->echo_commit = ldata->echo_mark;
 echoed = __process_echoes(tty);
 mutex_unlock(&ldata->output_lock);

 if (echoed && tty->ops->flush_chars)
  tty->ops->flush_chars(tty);
}
