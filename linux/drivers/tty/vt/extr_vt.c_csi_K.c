
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_cols; unsigned int vc_x; scalar_t__ vc_need_wrap; int vc_video_erase_char; scalar_t__ vc_pos; } ;


 scalar_t__ con_should_update (struct vc_data*) ;
 int do_update_region (struct vc_data*,unsigned long,unsigned int) ;
 int scr_memsetw (unsigned short*,int ,int) ;
 int vc_uniscr_clear_line (struct vc_data*,int,unsigned int) ;

__attribute__((used)) static void csi_K(struct vc_data *vc, int vpar)
{
 unsigned int count;
 unsigned short *start = (unsigned short *)vc->vc_pos;
 int offset;

 switch (vpar) {
  case 0:
   offset = 0;
   count = vc->vc_cols - vc->vc_x;
   break;
  case 1:
   offset = -vc->vc_x;
   count = vc->vc_x + 1;
   break;
  case 2:
   offset = -vc->vc_x;
   count = vc->vc_cols;
   break;
  default:
   return;
 }
 vc_uniscr_clear_line(vc, vc->vc_x + offset, count);
 scr_memsetw(start + offset, vc->vc_video_erase_char, 2 * count);
 vc->vc_need_wrap = 0;
 if (con_should_update(vc))
  do_update_region(vc, (unsigned long)(start + offset), count);
}
