
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270_line {int len; struct tty3270_cell* cells; } ;
struct tty3270_cell {char character; int f_color; int highlight; } ;
struct tty3270 {int cy; int cx; struct tty3270_line* screen; } ;


 int TAC_RESET ;
 int TAX_RESET ;
 int tty3270_convert_line (struct tty3270*,int) ;

__attribute__((used)) static void
tty3270_erase_line(struct tty3270 *tp, int mode)
{
 struct tty3270_line *line;
 struct tty3270_cell *cell;
 int i;

 line = tp->screen + tp->cy;
 if (mode == 0)
  line->len = tp->cx;
 else if (mode == 1) {
  for (i = 0; i < tp->cx; i++) {
   cell = line->cells + i;
   cell->character = ' ';
   cell->highlight = TAX_RESET;
   cell->f_color = TAC_RESET;
  }
  if (line->len <= tp->cx)
   line->len = tp->cx + 1;
 } else if (mode == 2)
  line->len = 0;
 tty3270_convert_line(tp, tp->cy);
}
