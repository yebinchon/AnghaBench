
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_8__ {int (* de_imageblit ) (TYPE_4__*,int ,int,int ,unsigned int,unsigned int,unsigned int,int ,int ,int,int ,unsigned int,unsigned int,int ) ;} ;
struct sm750_dev {int slock; TYPE_4__ accel; } ;
struct TYPE_5__ {unsigned int oScreen; } ;
struct lynxfb_par {TYPE_1__ crtc; struct sm750_dev* dev; } ;
struct TYPE_7__ {unsigned int line_length; scalar_t__ visual; } ;
struct TYPE_6__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_3__ fix; TYPE_2__ var; struct lynxfb_par* par; } ;
struct fb_image {int depth; size_t fg_color; size_t bg_color; int width; int height; int dy; int dx; int data; } ;


 scalar_t__ FB_VISUAL_DIRECTCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int HW_ROP2_COPY ;
 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_4__*,int ,int,int ,unsigned int,unsigned int,unsigned int,int ,int ,int,int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void lynxfb_ops_imageblit(struct fb_info *info,
     const struct fb_image *image)
{
 unsigned int base, pitch, Bpp;
 unsigned int fgcol, bgcol;
 struct lynxfb_par *par;
 struct sm750_dev *sm750_dev;

 par = info->par;
 sm750_dev = par->dev;




 base = par->crtc.oScreen;
 pitch = info->fix.line_length;
 Bpp = info->var.bits_per_pixel >> 3;


 if (image->depth != 1) {
  cfb_imageblit(info, image);
  return;
 }

 if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
     info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
  fgcol = ((u32 *)info->pseudo_palette)[image->fg_color];
  bgcol = ((u32 *)info->pseudo_palette)[image->bg_color];
 } else {
  fgcol = image->fg_color;
  bgcol = image->bg_color;
 }







 spin_lock(&sm750_dev->slock);

 sm750_dev->accel.de_imageblit(&sm750_dev->accel,
          image->data, image->width >> 3, 0,
          base, pitch, Bpp,
          image->dx, image->dy,
          image->width, image->height,
          fgcol, bgcol, HW_ROP2_COPY);
 spin_unlock(&sm750_dev->slock);
}
