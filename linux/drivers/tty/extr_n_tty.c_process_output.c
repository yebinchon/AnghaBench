
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int output_lock; } ;


 int do_output_char (unsigned char,struct tty_struct*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_write_room (struct tty_struct*) ;

__attribute__((used)) static int process_output(unsigned char c, struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;
 int space, retval;

 mutex_lock(&ldata->output_lock);

 space = tty_write_room(tty);
 retval = do_output_char(c, tty, space);

 mutex_unlock(&ldata->output_lock);
 if (retval < 0)
  return -1;
 else
  return 0;
}
