
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; scalar_t__ closing; struct n_tty_data* disc_data; } ;
struct n_tty_data {int output_lock; int atomic_read_lock; int overrun_time; } ;


 int ENOMEM ;
 int TTY_LDISC_HALTED ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 int mutex_init (int *) ;
 int n_tty_set_termios (struct tty_struct*,int *) ;
 int tty_unthrottle (struct tty_struct*) ;
 struct n_tty_data* vzalloc (int) ;

__attribute__((used)) static int n_tty_open(struct tty_struct *tty)
{
 struct n_tty_data *ldata;


 ldata = vzalloc(sizeof(*ldata));
 if (!ldata)
  return -ENOMEM;

 ldata->overrun_time = jiffies;
 mutex_init(&ldata->atomic_read_lock);
 mutex_init(&ldata->output_lock);

 tty->disc_data = ldata;
 tty->closing = 0;

 clear_bit(TTY_LDISC_HALTED, &tty->flags);
 n_tty_set_termios(tty, ((void*)0));
 tty_unthrottle(tty);
 return 0;
}
