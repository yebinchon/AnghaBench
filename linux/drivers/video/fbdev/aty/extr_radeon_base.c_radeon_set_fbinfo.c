
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeonfb_info {int mmio_base_phys; int video_ram; int fb_base_phys; int name; int mapped_vram; int fb_base; int pseudo_palette; struct fb_info* info; } ;
struct TYPE_2__ {int xpanstep; int ypanstep; int accel; int mmio_len; int mmio_start; scalar_t__ type_aux; scalar_t__ ywrapstep; int visual; int type; int smem_len; int smem_start; int id; } ;
struct fb_info {int flags; int cmap; TYPE_1__ fix; int screen_size; int screen_base; int * fbops; int pseudo_palette; struct radeonfb_info* par; } ;


 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_COPYAREA ;
 int FBINFO_HWACCEL_DISABLED ;
 int FBINFO_HWACCEL_FILLRECT ;
 int FBINFO_HWACCEL_XPAN ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_ACCEL_ATI_RADEON ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int RADEON_REGSIZE ;
 int fb_alloc_cmap (int *,int,int ) ;
 scalar_t__ noaccel ;
 int radeonfb_ops ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int radeon_set_fbinfo(struct radeonfb_info *rinfo)
{
 struct fb_info *info = rinfo->info;

 info->par = rinfo;
 info->pseudo_palette = rinfo->pseudo_palette;
 info->flags = FBINFO_DEFAULT
      | FBINFO_HWACCEL_COPYAREA
      | FBINFO_HWACCEL_FILLRECT
      | FBINFO_HWACCEL_XPAN
      | FBINFO_HWACCEL_YPAN;
 info->fbops = &radeonfb_ops;
 info->screen_base = rinfo->fb_base;
 info->screen_size = rinfo->mapped_vram;

 strlcpy(info->fix.id, rinfo->name, sizeof(info->fix.id));
        info->fix.smem_start = rinfo->fb_base_phys;
        info->fix.smem_len = rinfo->video_ram;
        info->fix.type = FB_TYPE_PACKED_PIXELS;
        info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
        info->fix.xpanstep = 8;
        info->fix.ypanstep = 1;
        info->fix.ywrapstep = 0;
        info->fix.type_aux = 0;
        info->fix.mmio_start = rinfo->mmio_base_phys;
        info->fix.mmio_len = RADEON_REGSIZE;
 info->fix.accel = FB_ACCEL_ATI_RADEON;

 fb_alloc_cmap(&info->cmap, 256, 0);

 if (noaccel)
  info->flags |= FBINFO_HWACCEL_DISABLED;

        return 0;
}
