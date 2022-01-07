
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmpfb_info {scalar_t__ pix_fmt; int fb_size; int fb_start; int pseudo_palette; int fb_start_dma; int name; } ;
struct TYPE_4__ {int xres_virtual; int bits_per_pixel; int yres; } ;
struct TYPE_3__ {int line_length; int visual; int smem_len; int smem_start; int accel; scalar_t__ ywrapstep; int ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int id; } ;
struct fb_info {int flags; int node; int cmap; int screen_size; int screen_base; int pseudo_palette; int * fbops; TYPE_2__ var; TYPE_1__ fix; } ;


 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_XPAN ;
 int FBINFO_HWACCEL_YPAN ;
 int FBINFO_PARTIAL_PAN_OK ;
 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 scalar_t__ PIXFMT_PSEUDOCOLOR ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 int mmpfb_ops ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int fb_info_setup(struct fb_info *info,
   struct mmpfb_info *fbi)
{
 int ret = 0;

 info->flags = FBINFO_DEFAULT | FBINFO_PARTIAL_PAN_OK |
  FBINFO_HWACCEL_XPAN | FBINFO_HWACCEL_YPAN;
 info->node = -1;
 strcpy(info->fix.id, fbi->name);
 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.xpanstep = 0;
 info->fix.ypanstep = info->var.yres;
 info->fix.ywrapstep = 0;
 info->fix.accel = FB_ACCEL_NONE;
 info->fix.smem_start = fbi->fb_start_dma;
 info->fix.smem_len = fbi->fb_size;
 info->fix.visual = (fbi->pix_fmt == PIXFMT_PSEUDOCOLOR) ?
  FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 info->fix.line_length = info->var.xres_virtual *
  info->var.bits_per_pixel / 8;
 info->fbops = &mmpfb_ops;
 info->pseudo_palette = fbi->pseudo_palette;
 info->screen_base = fbi->fb_start;
 info->screen_size = fbi->fb_size;


 if (fb_alloc_cmap(&info->cmap, 256, 0) < 0)
  ret = -ENOMEM;

 return ret;
}
