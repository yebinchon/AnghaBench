
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned short vc_video_erase_char; int vc_cols; int vc_rows; scalar_t__ vc_hi_font_mask; } ;
struct fb_info {int dummy; } ;


 int fbcon_clear (struct vc_data*,int ,int ,int ,int ) ;

__attribute__((used)) static void fbcon_generic_blank(struct vc_data *vc, struct fb_info *info,
    int blank)
{
 if (blank) {
  unsigned short charmask = vc->vc_hi_font_mask ?
   0x1ff : 0xff;
  unsigned short oldc;

  oldc = vc->vc_video_erase_char;
  vc->vc_video_erase_char &= charmask;
  fbcon_clear(vc, 0, 0, vc->vc_rows, vc->vc_cols);
  vc->vc_video_erase_char = oldc;
 }
}
