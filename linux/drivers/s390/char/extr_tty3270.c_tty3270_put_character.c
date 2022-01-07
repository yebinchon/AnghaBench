
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty3270_line {scalar_t__ len; struct tty3270_cell* cells; } ;
struct tty3270_cell {int f_color; int highlight; int character; } ;
struct TYPE_2__ {int * ascebc; } ;
struct tty3270 {int cy; scalar_t__ cx; int f_color; int highlight; TYPE_1__ view; struct tty3270_line* screen; } ;



__attribute__((used)) static void tty3270_put_character(struct tty3270 *tp, char ch)
{
 struct tty3270_line *line;
 struct tty3270_cell *cell;

 line = tp->screen + tp->cy;
 if (line->len <= tp->cx) {
  while (line->len < tp->cx) {
   cell = line->cells + line->len;
   cell->character = tp->view.ascebc[' '];
   cell->highlight = tp->highlight;
   cell->f_color = tp->f_color;
   line->len++;
  }
  line->len++;
 }
 cell = line->cells + tp->cx;
 cell->character = tp->view.ascebc[(unsigned int) ch];
 cell->highlight = tp->highlight;
 cell->f_color = tp->f_color;
}
