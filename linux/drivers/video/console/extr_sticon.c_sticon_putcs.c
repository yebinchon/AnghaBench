
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; } ;
struct TYPE_2__ {int cursor_y; int cursor_x; } ;


 int CURSOR_DRAW_DELAY ;
 scalar_t__ KD_TEXT ;
 scalar_t__ console_blanked ;
 int cursor_undrawn () ;
 TYPE_1__* p ;
 int scr_readw (int ) ;
 int sti_putc (int ,int ,int,int ) ;
 int sticon_sti ;
 int vbl_cursor_cnt ;
 scalar_t__ vga_is_gfx ;

__attribute__((used)) static void sticon_putcs(struct vc_data *conp, const unsigned short *s,
    int count, int ypos, int xpos)
{
    int redraw_cursor = 0;

    if (vga_is_gfx || console_blanked)
     return;

    if (conp->vc_mode != KD_TEXT)
         return;
    while (count--) {
 sti_putc(sticon_sti, scr_readw(s++), ypos, xpos++);
    }

    if (redraw_cursor)
     vbl_cursor_cnt = CURSOR_DRAW_DELAY;
}
