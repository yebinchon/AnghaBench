
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ canon_head; scalar_t__ read_tail; scalar_t__ icanon; } ;


 scalar_t__ N_TTY_BUF_SIZE ;
 scalar_t__ TTY_THRESHOLD_THROTTLE ;
 int TTY_THROTTLE_SAFE ;
 int __tty_set_flow_change (struct tty_struct*,int ) ;
 scalar_t__ read_cnt (struct n_tty_data*) ;
 int tty_set_flow_change (struct tty_struct*,int ) ;
 int tty_throttle_safe (struct tty_struct*) ;

__attribute__((used)) static void n_tty_check_throttle(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;






 if (ldata->icanon && ldata->canon_head == ldata->read_tail)
  return;

 while (1) {
  int throttled;
  tty_set_flow_change(tty, TTY_THROTTLE_SAFE);
  if (N_TTY_BUF_SIZE - read_cnt(ldata) >= TTY_THRESHOLD_THROTTLE)
   break;
  throttled = tty_throttle_safe(tty);
  if (!throttled)
   break;
 }
 __tty_set_flow_change(tty, 0);
}
