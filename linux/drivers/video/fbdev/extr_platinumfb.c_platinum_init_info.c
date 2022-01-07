
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info_platinum {scalar_t__ total_vram; scalar_t__ frame_buffer_phys; int platinum_regs_phys; scalar_t__ frame_buffer; int pseudo_palette; } ;
struct TYPE_2__ {int mmio_len; int accel; scalar_t__ type_aux; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ ywrapstep; scalar_t__ smem_len; scalar_t__ smem_start; int type; int mmio_start; int id; } ;
struct fb_info {TYPE_1__ fix; int cmap; scalar_t__ screen_base; int flags; int pseudo_palette; int * fbops; } ;


 int FBINFO_DEFAULT ;
 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int fb_alloc_cmap (int *,int,int ) ;
 int platinumfb_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void platinum_init_info(struct fb_info *info,
          struct fb_info_platinum *pinfo)
{

 info->fbops = &platinumfb_ops;
 info->pseudo_palette = pinfo->pseudo_palette;
        info->flags = FBINFO_DEFAULT;
 info->screen_base = pinfo->frame_buffer + 0x20;

 fb_alloc_cmap(&info->cmap, 256, 0);


 strcpy(info->fix.id, "platinum");
 info->fix.mmio_start = pinfo->platinum_regs_phys;
 info->fix.mmio_len = 0x1000;
 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.smem_start = pinfo->frame_buffer_phys + 0x20;
 info->fix.smem_len = pinfo->total_vram - 0x20;
        info->fix.ywrapstep = 0;
 info->fix.xpanstep = 0;
 info->fix.ypanstep = 0;
        info->fix.type_aux = 0;
        info->fix.accel = FB_ACCEL_NONE;
}
