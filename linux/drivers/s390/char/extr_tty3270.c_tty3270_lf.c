
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty3270_line {scalar_t__ len; } ;
struct TYPE_2__ {int rows; } ;
struct tty3270 {int cy; TYPE_1__ view; struct tty3270_line* screen; } ;


 int tty3270_blank_line (struct tty3270*) ;
 int tty3270_convert_line (struct tty3270*,int) ;
 int tty3270_rebuild_update (struct tty3270*) ;

__attribute__((used)) static void
tty3270_lf(struct tty3270 *tp)
{
 struct tty3270_line temp;
 int i;

 tty3270_convert_line(tp, tp->cy);
 if (tp->cy < tp->view.rows - 3) {
  tp->cy++;
  return;
 }

 tty3270_blank_line(tp);
 temp = tp->screen[0];
 temp.len = 0;
 for (i = 0; i < tp->view.rows - 3; i++)
  tp->screen[i] = tp->screen[i+1];
 tp->screen[tp->view.rows - 3] = temp;
 tty3270_rebuild_update(tp);
}
