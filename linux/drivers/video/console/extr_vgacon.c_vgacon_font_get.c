
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;
struct vc_data {TYPE_1__ vc_font; } ;
struct console_font {int charcount; int data; int height; int width; } ;


 int EINVAL ;
 int VGA_FONTWIDTH ;
 scalar_t__ VIDEO_TYPE_EGAM ;
 scalar_t__ vga_512_chars ;
 scalar_t__ vga_video_type ;
 int vgacon_do_font_op (int *,int ,int ,scalar_t__) ;
 int vgastate ;

__attribute__((used)) static int vgacon_font_get(struct vc_data *c, struct console_font *font)
{
 if (vga_video_type < VIDEO_TYPE_EGAM)
  return -EINVAL;

 font->width = VGA_FONTWIDTH;
 font->height = c->vc_font.height;
 font->charcount = vga_512_chars ? 512 : 256;
 if (!font->data)
  return 0;
 return vgacon_do_font_op(&vgastate, font->data, 0, vga_512_chars);
}
