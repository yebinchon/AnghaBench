
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; } ;
struct TYPE_2__ {int cursor_x; int cursor_y; } ;


 int CURSOR_DRAW_DELAY ;
 scalar_t__ KD_TEXT ;
 scalar_t__ console_blanked ;
 int cursor_undrawn () ;
 TYPE_1__* p ;
 int sti_putc (int ,int,int,int) ;
 int sticon_sti ;
 int vbl_cursor_cnt ;
 scalar_t__ vga_is_gfx ;

__attribute__((used)) static void sticon_putc(struct vc_data *conp, int c, int ypos, int xpos)
{
    int redraw_cursor = 0;

    if (vga_is_gfx || console_blanked)
     return;

    if (conp->vc_mode != KD_TEXT)
         return;







    sti_putc(sticon_sti, c, ypos, xpos);

    if (redraw_cursor)
     vbl_cursor_cnt = CURSOR_DRAW_DELAY;
}
