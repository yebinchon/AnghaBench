
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_x; unsigned int vc_cols; unsigned int vc_y; unsigned int vc_rows; int vc_scr_end; int vc_pos; int vc_origin; scalar_t__ vc_need_wrap; int vc_video_erase_char; } ;


 scalar_t__ con_should_update (struct vc_data*) ;
 int do_update_region (struct vc_data*,unsigned long,unsigned int) ;
 int flush_scrollback (struct vc_data*) ;
 int scr_memsetw (unsigned short*,int ,int) ;
 int vc_uniscr_clear_line (struct vc_data*,unsigned int,unsigned int) ;
 int vc_uniscr_clear_lines (struct vc_data*,int ,unsigned int) ;

__attribute__((used)) static void csi_J(struct vc_data *vc, int vpar)
{
 unsigned int count;
 unsigned short * start;

 switch (vpar) {
  case 0:
   vc_uniscr_clear_line(vc, vc->vc_x,
          vc->vc_cols - vc->vc_x);
   vc_uniscr_clear_lines(vc, vc->vc_y + 1,
           vc->vc_rows - vc->vc_y - 1);
   count = (vc->vc_scr_end - vc->vc_pos) >> 1;
   start = (unsigned short *)vc->vc_pos;
   break;
  case 1:
   vc_uniscr_clear_line(vc, 0, vc->vc_x + 1);
   vc_uniscr_clear_lines(vc, 0, vc->vc_y);
   count = ((vc->vc_pos - vc->vc_origin) >> 1) + 1;
   start = (unsigned short *)vc->vc_origin;
   break;
  case 3:
   flush_scrollback(vc);

  case 2:
   vc_uniscr_clear_lines(vc, 0, vc->vc_rows);
   count = vc->vc_cols * vc->vc_rows;
   start = (unsigned short *)vc->vc_origin;
   break;
  default:
   return;
 }
 scr_memsetw(start, vc->vc_video_erase_char, 2 * count);
 if (con_should_update(vc))
  do_update_region(vc, (unsigned long) start, count);
 vc->vc_need_wrap = 0;
}
