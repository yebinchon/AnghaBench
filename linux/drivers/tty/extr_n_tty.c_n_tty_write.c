
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int termios_rwsem; int flags; scalar_t__ fasync; int write_wait; TYPE_3__* ops; struct n_tty_data* disc_data; TYPE_2__* link; } ;
struct n_tty_data {int output_lock; } ;
struct file {TYPE_1__* f_op; } ;
typedef int ssize_t ;
struct TYPE_6__ {int (* write ) (struct tty_struct*,unsigned char const*,size_t) ;int (* flush_chars ) (struct tty_struct*) ;} ;
struct TYPE_5__ {int count; } ;
struct TYPE_4__ {scalar_t__ write; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int EIO ;
 int ERESTARTSYS ;
 scalar_t__ L_TOSTOP (struct tty_struct*) ;
 int MAX_SCHEDULE_TIMEOUT ;
 scalar_t__ O_OPOST (struct tty_struct*) ;
 int TASK_INTERRUPTIBLE ;
 int TTY_DO_WRITE_WAKEUP ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int process_echoes (struct tty_struct*) ;
 scalar_t__ process_output (int,struct tty_struct*) ;
 int process_output_block (struct tty_struct*,unsigned char const*,size_t) ;
 scalar_t__ redirected_tty_write ;
 int remove_wait_queue (int *,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*,unsigned char const*,size_t) ;
 int tty_check_change (struct tty_struct*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 scalar_t__ tty_io_nonblock (struct tty_struct*,struct file*) ;
 int up_read (int *) ;
 int wait ;
 int wait_woken (int *,int ,int ) ;
 int woken_wake_function ;

__attribute__((used)) static ssize_t n_tty_write(struct tty_struct *tty, struct file *file,
      const unsigned char *buf, size_t nr)
{
 const unsigned char *b = buf;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 int c;
 ssize_t retval = 0;


 if (L_TOSTOP(tty) && file->f_op->write != redirected_tty_write) {
  retval = tty_check_change(tty);
  if (retval)
   return retval;
 }

 down_read(&tty->termios_rwsem);


 process_echoes(tty);

 add_wait_queue(&tty->write_wait, &wait);
 while (1) {
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  if (tty_hung_up_p(file) || (tty->link && !tty->link->count)) {
   retval = -EIO;
   break;
  }
  if (O_OPOST(tty)) {
   while (nr > 0) {
    ssize_t num = process_output_block(tty, b, nr);
    if (num < 0) {
     if (num == -EAGAIN)
      break;
     retval = num;
     goto break_out;
    }
    b += num;
    nr -= num;
    if (nr == 0)
     break;
    c = *b;
    if (process_output(c, tty) < 0)
     break;
    b++; nr--;
   }
   if (tty->ops->flush_chars)
    tty->ops->flush_chars(tty);
  } else {
   struct n_tty_data *ldata = tty->disc_data;

   while (nr > 0) {
    mutex_lock(&ldata->output_lock);
    c = tty->ops->write(tty, b, nr);
    mutex_unlock(&ldata->output_lock);
    if (c < 0) {
     retval = c;
     goto break_out;
    }
    if (!c)
     break;
    b += c;
    nr -= c;
   }
  }
  if (!nr)
   break;
  if (tty_io_nonblock(tty, file)) {
   retval = -EAGAIN;
   break;
  }
  up_read(&tty->termios_rwsem);

  wait_woken(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);

  down_read(&tty->termios_rwsem);
 }
break_out:
 remove_wait_queue(&tty->write_wait, &wait);
 if (nr && tty->fasync)
  set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 up_read(&tty->termios_rwsem);
 return (b - buf) ? b - buf : retval;
}
