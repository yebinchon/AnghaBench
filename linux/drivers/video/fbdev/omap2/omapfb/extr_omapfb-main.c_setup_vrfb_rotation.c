
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrfb {int yuv_mode; unsigned int bytespp; scalar_t__ xres; int yres; scalar_t__* paddr; int ** vaddr; } ;
struct omapfb_info {scalar_t__ rotation_type; struct omapfb2_mem_region* region; } ;
struct omapfb2_mem_region {struct vrfb vrfb; int paddr; int size; } ;
struct fb_var_screeninfo {int bits_per_pixel; scalar_t__ xres_virtual; int yres_virtual; int nonstd; } ;
struct fb_fix_screeninfo {int smem_len; int line_length; scalar_t__ smem_start; } ;
struct fb_info {int * screen_base; struct fb_fix_screeninfo fix; struct fb_var_screeninfo var; } ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int DBG (char*) ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;


 int OMAP_DSS_COLOR_UYVY ;
 int OMAP_DSS_COLOR_YUV2 ;
 scalar_t__ OMAP_DSS_ROT_VRFB ;
 int OMAP_VRFB_LINE_LEN ;
 int fb_mode_to_dss_mode (struct fb_var_screeninfo*,int*) ;
 int iounmap (int *) ;
 int omap_vrfb_map_angle (struct vrfb*,int,int ) ;
 int omap_vrfb_setup (struct vrfb*,int ,scalar_t__,int,unsigned int,int) ;

__attribute__((used)) static int setup_vrfb_rotation(struct fb_info *fbi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omapfb2_mem_region *rg = ofbi->region;
 struct vrfb *vrfb = &rg->vrfb;
 struct fb_var_screeninfo *var = &fbi->var;
 struct fb_fix_screeninfo *fix = &fbi->fix;
 unsigned bytespp;
 bool yuv_mode;
 enum omap_color_mode mode;
 int r;
 bool reconf;

 if (!rg->size || ofbi->rotation_type != OMAP_DSS_ROT_VRFB)
  return 0;

 DBG("setup_vrfb_rotation\n");

 r = fb_mode_to_dss_mode(var, &mode);
 if (r)
  return r;

 bytespp = var->bits_per_pixel >> 3;

 yuv_mode = mode == OMAP_DSS_COLOR_YUV2 || mode == OMAP_DSS_COLOR_UYVY;






 reconf = 0;

 if (yuv_mode != vrfb->yuv_mode)
  reconf = 1;
 else if (bytespp != vrfb->bytespp)
  reconf = 1;
 else if (vrfb->xres != var->xres_virtual ||
   vrfb->yres != var->yres_virtual)
  reconf = 1;

 if (vrfb->vaddr[0] && reconf) {
  fbi->screen_base = ((void*)0);
  fix->smem_start = 0;
  fix->smem_len = 0;
  iounmap(vrfb->vaddr[0]);
  vrfb->vaddr[0] = ((void*)0);
  DBG("setup_vrfb_rotation: reset fb\n");
 }

 if (vrfb->vaddr[0])
  return 0;

 omap_vrfb_setup(&rg->vrfb, rg->paddr,
   var->xres_virtual,
   var->yres_virtual,
   bytespp, yuv_mode);


 r = omap_vrfb_map_angle(vrfb, var->yres_virtual, 0);
 if (r)
  return r;


 fbi->screen_base = ofbi->region->vrfb.vaddr[0];

 fix->smem_start = ofbi->region->vrfb.paddr[0];

 switch (var->nonstd) {
 case 129:
 case 128:
  fix->line_length =
   (OMAP_VRFB_LINE_LEN * var->bits_per_pixel) >> 2;
  break;
 default:
  fix->line_length =
   (OMAP_VRFB_LINE_LEN * var->bits_per_pixel) >> 3;
  break;
 }

 fix->smem_len = var->yres_virtual * fix->line_length;

 return 0;
}
