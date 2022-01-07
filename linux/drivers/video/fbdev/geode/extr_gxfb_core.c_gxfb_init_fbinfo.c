
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gxfb_par {int dummy; } ;
struct TYPE_4__ {int height; int width; scalar_t__ grayscale; int vmode; scalar_t__ accel_flags; int activate; scalar_t__ nonstd; } ;
struct TYPE_3__ {int accel; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int id; } ;
struct fb_info {int node; int cmap; TYPE_2__ var; void* pseudo_palette; int flags; int * fbops; TYPE_1__ fix; struct gxfb_par* par; } ;
struct device {int dummy; } ;


 int FBINFO_DEFAULT ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 struct fb_info* framebuffer_alloc (int,struct device*) ;
 int framebuffer_release (struct fb_info*) ;
 int gxfb_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct fb_info *gxfb_init_fbinfo(struct device *dev)
{
 struct gxfb_par *par;
 struct fb_info *info;


 info = framebuffer_alloc(sizeof(struct gxfb_par) + sizeof(u32) * 16,
   dev);
 if (!info)
  return ((void*)0);

 par = info->par;

 strcpy(info->fix.id, "Geode GX");

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.xpanstep = 0;
 info->fix.ypanstep = 0;
 info->fix.ywrapstep = 0;
 info->fix.accel = FB_ACCEL_NONE;

 info->var.nonstd = 0;
 info->var.activate = FB_ACTIVATE_NOW;
 info->var.height = -1;
 info->var.width = -1;
 info->var.accel_flags = 0;
 info->var.vmode = FB_VMODE_NONINTERLACED;

 info->fbops = &gxfb_ops;
 info->flags = FBINFO_DEFAULT;
 info->node = -1;

 info->pseudo_palette = (void *)par + sizeof(struct gxfb_par);

 info->var.grayscale = 0;

 if (fb_alloc_cmap(&info->cmap, 256, 0) < 0) {
  framebuffer_release(info);
  return ((void*)0);
 }

 return info;
}
