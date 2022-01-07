
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int physical; } ;
struct intelfb_info {int mmio_base_phys; TYPE_2__ fb; int name; int pseudo_palette; struct fb_info* info; } ;
struct TYPE_6__ {int xpanstep; int ypanstep; int accel; int mmio_len; int mmio_start; scalar_t__ ywrapstep; scalar_t__ type_aux; int type; int smem_len; int smem_start; int id; } ;
struct TYPE_4__ {int size; int buf_align; int access_align; int scan_align; int flags; } ;
struct fb_info {int var; TYPE_3__ fix; TYPE_1__ pixmap; int pseudo_palette; int * fbops; int flags; } ;


 int DBG_MSG (char*) ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ACCEL_I830 ;
 int FB_PIXMAP_SYSTEM ;
 int FB_TYPE_PACKED_PIXELS ;
 int INTEL_REG_SIZE ;
 int intel_fb_ops ;
 scalar_t__ intelfb_init_var (struct intelfb_info*) ;
 int strcpy (int ,int ) ;
 int update_dinfo (struct intelfb_info*,int *) ;

__attribute__((used)) static int intelfb_set_fbinfo(struct intelfb_info *dinfo)
{
 struct fb_info *info = dinfo->info;

 DBG_MSG("intelfb_set_fbinfo\n");

 info->flags = FBINFO_FLAG_DEFAULT;
 info->fbops = &intel_fb_ops;
 info->pseudo_palette = dinfo->pseudo_palette;

 info->pixmap.size = 64*1024;
 info->pixmap.buf_align = 8;
 info->pixmap.access_align = 32;
 info->pixmap.flags = FB_PIXMAP_SYSTEM;

 if (intelfb_init_var(dinfo))
  return 1;

 info->pixmap.scan_align = 1;
 strcpy(info->fix.id, dinfo->name);
 info->fix.smem_start = dinfo->fb.physical;
 info->fix.smem_len = dinfo->fb.size;
 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.xpanstep = 8;
 info->fix.ypanstep = 1;
 info->fix.ywrapstep = 0;
 info->fix.mmio_start = dinfo->mmio_base_phys;
 info->fix.mmio_len = INTEL_REG_SIZE;
 info->fix.accel = FB_ACCEL_I830;
 update_dinfo(dinfo, &info->var);

 return 0;
}
