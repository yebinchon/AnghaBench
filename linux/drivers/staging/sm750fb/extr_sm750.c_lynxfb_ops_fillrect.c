
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_8__ {int (* de_fillrect ) (TYPE_4__*,unsigned int,unsigned int,unsigned int,int ,int ,int ,int ,size_t,unsigned int) ;} ;
struct sm750_dev {int slock; TYPE_4__ accel; } ;
struct TYPE_5__ {unsigned int oScreen; } ;
struct lynxfb_par {TYPE_1__ crtc; struct sm750_dev* dev; } ;
struct TYPE_7__ {int bits_per_pixel; } ;
struct TYPE_6__ {unsigned int line_length; } ;
struct fb_info {scalar_t__ state; scalar_t__ pseudo_palette; TYPE_3__ var; TYPE_2__ fix; struct lynxfb_par* par; } ;
struct fb_fillrect {size_t color; int height; int width; int dy; int dx; int rop; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 unsigned int HW_ROP2_COPY ;
 unsigned int HW_ROP2_XOR ;
 int ROP_COPY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_4__*,unsigned int,unsigned int,unsigned int,int ,int ,int ,int ,size_t,unsigned int) ;

__attribute__((used)) static void lynxfb_ops_fillrect(struct fb_info *info,
    const struct fb_fillrect *region)
{
 struct lynxfb_par *par;
 struct sm750_dev *sm750_dev;
 unsigned int base, pitch, Bpp, rop;
 u32 color;

 if (info->state != FBINFO_STATE_RUNNING)
  return;

 par = info->par;
 sm750_dev = par->dev;





 base = par->crtc.oScreen;
 pitch = info->fix.line_length;
 Bpp = info->var.bits_per_pixel >> 3;

 color = (Bpp == 1) ? region->color :
  ((u32 *)info->pseudo_palette)[region->color];
 rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR : HW_ROP2_COPY;







 spin_lock(&sm750_dev->slock);

 sm750_dev->accel.de_fillrect(&sm750_dev->accel,
         base, pitch, Bpp,
         region->dx, region->dy,
         region->width, region->height,
         color, rop);
 spin_unlock(&sm750_dev->slock);
}
