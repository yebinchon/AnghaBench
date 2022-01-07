
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
struct console_font {unsigned int charcount; scalar_t__ width; int height; int data; } ;


 int EINVAL ;
 unsigned int KD_FONT_FLAG_DONT_RECALC ;
 scalar_t__ VGA_FONTWIDTH ;
 scalar_t__ VIDEO_TYPE_EGAM ;
 scalar_t__ vga_video_type ;
 int vgacon_adjust_height (struct vc_data*,int ) ;
 int vgacon_do_font_op (int *,int ,int,int) ;
 int vgastate ;

__attribute__((used)) static int vgacon_font_set(struct vc_data *c, struct console_font *font,
      unsigned int flags)
{
 unsigned charcount = font->charcount;
 int rc;

 if (vga_video_type < VIDEO_TYPE_EGAM)
  return -EINVAL;

 if (font->width != VGA_FONTWIDTH ||
     (charcount != 256 && charcount != 512))
  return -EINVAL;

 rc = vgacon_do_font_op(&vgastate, font->data, 1, charcount == 512);
 if (rc)
  return rc;

 if (!(flags & KD_FONT_FLAG_DONT_RECALC))
  rc = vgacon_adjust_height(c, font->height);
 return rc;
}
