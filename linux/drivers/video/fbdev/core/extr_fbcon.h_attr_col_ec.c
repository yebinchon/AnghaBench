
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_video_erase_char; scalar_t__ vc_can_do_color; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {TYPE_1__ fix; } ;


 scalar_t__ FB_VISUAL_MONO01 ;
 int attr_bgcol (int,int ) ;
 int attr_fgcol (int,int ) ;
 scalar_t__ attr_reverse (int ) ;
 int mono_col (struct fb_info*) ;

__attribute__((used)) static inline int attr_col_ec(int shift, struct vc_data *vc,
         struct fb_info *info, int is_fg)
{
 int is_mono01;
 int col;
 int fg;
 int bg;

 if (!vc)
  return 0;

 if (vc->vc_can_do_color)
  return is_fg ? attr_fgcol(shift,vc->vc_video_erase_char)
   : attr_bgcol(shift,vc->vc_video_erase_char);

 if (!info)
  return 0;

 col = mono_col(info);
 is_mono01 = info->fix.visual == FB_VISUAL_MONO01;

 if (attr_reverse(vc->vc_video_erase_char)) {
  fg = is_mono01 ? col : 0;
  bg = is_mono01 ? 0 : col;
 }
 else {
  fg = is_mono01 ? 0 : col;
  bg = is_mono01 ? col : 0;
 }

 return is_fg ? fg : bg;
}
