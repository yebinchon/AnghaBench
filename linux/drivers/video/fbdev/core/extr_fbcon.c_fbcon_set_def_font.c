
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {size_t vc_num; } ;
struct font_desc {int data; int height; int width; } ;
struct TYPE_4__ {int blit_y; int blit_x; } ;
struct TYPE_3__ {int yres; int xres; } ;
struct fb_info {TYPE_2__ pixmap; TYPE_1__ var; } ;
struct console_font {int height; int width; } ;


 int ENOENT ;
 size_t* con2fb_map ;
 int fbcon_do_set_font (struct vc_data*,int ,int ,int ,int ) ;
 struct font_desc* find_font (char*) ;
 struct font_desc* get_default_font (int ,int ,int ,int ) ;
 struct fb_info** registered_fb ;

__attribute__((used)) static int fbcon_set_def_font(struct vc_data *vc, struct console_font *font, char *name)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 const struct font_desc *f;

 if (!name)
  f = get_default_font(info->var.xres, info->var.yres,
         info->pixmap.blit_x, info->pixmap.blit_y);
 else if (!(f = find_font(name)))
  return -ENOENT;

 font->width = f->width;
 font->height = f->height;
 return fbcon_do_set_font(vc, f->width, f->height, f->data, 0);
}
