
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct tty3270* driver_data; } ;
struct TYPE_2__ {int rows; int lock; } ;
struct tty3270 {int nr_lines; TYPE_1__ view; int update_flags; int saved_f_color; int f_color; int saved_highlight; int highlight; scalar_t__ saved_cy; scalar_t__ cy; scalar_t__ saved_cx; scalar_t__ cx; } ;


 int TAC_RESET ;
 int TAX_RESET ;
 int TTY_UPDATE_ALL ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty3270_blank_line (struct tty3270*) ;
 int tty3270_blank_screen (struct tty3270*) ;
 int tty3270_set_timer (struct tty3270*,int) ;

__attribute__((used)) static void
tty3270_hangup(struct tty_struct *tty)
{
 struct tty3270 *tp;

 tp = tty->driver_data;
 if (!tp)
  return;
 spin_lock_bh(&tp->view.lock);
 tp->cx = tp->saved_cx = 0;
 tp->cy = tp->saved_cy = 0;
 tp->highlight = tp->saved_highlight = TAX_RESET;
 tp->f_color = tp->saved_f_color = TAC_RESET;
 tty3270_blank_screen(tp);
 while (tp->nr_lines < tp->view.rows - 2)
  tty3270_blank_line(tp);
 tp->update_flags = TTY_UPDATE_ALL;
 spin_unlock_bh(&tp->view.lock);
 tty3270_set_timer(tp, 1);
}
