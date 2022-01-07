
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {int dummy; } ;


 scalar_t__ I_BRKINT (struct tty_struct*) ;
 scalar_t__ I_IGNBRK (struct tty_struct*) ;
 scalar_t__ I_PARMRK (struct tty_struct*) ;
 int SIGINT ;
 int isig (int ,struct tty_struct*) ;
 int put_tty_queue (char,struct n_tty_data*) ;

__attribute__((used)) static void n_tty_receive_break(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;

 if (I_IGNBRK(tty))
  return;
 if (I_BRKINT(tty)) {
  isig(SIGINT, tty);
  return;
 }
 if (I_PARMRK(tty)) {
  put_tty_queue('\377', ldata);
  put_tty_queue('\0', ldata);
 }
 put_tty_queue('\0', ldata);
}
