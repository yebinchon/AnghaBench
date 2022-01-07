
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u_int ;
struct TYPE_6__ {int bits_per_pixel; int xres; } ;
struct TYPE_4__ {int line_length; unsigned long smem_len; unsigned long smem_start; void* visual; } ;
struct fb_info {TYPE_3__ var; TYPE_1__ fix; } ;
struct TYPE_5__ {int palette_size; unsigned long screen_end; unsigned long vram_half_sam; scalar_t__ using_vram; } ;


 int BUG () ;
 int DMA_CR_D ;
 int DMA_CR_E ;
 void* FB_VISUAL_DIRECTCOLOR ;
 void* FB_VISUAL_MONO10 ;
 void* FB_VISUAL_PSEUDOCOLOR ;
 int IOMD_VIDCR ;
 int IOMD_VIDEND ;
 int IOMD_VIDSTART ;
 int VDMA_END ;
 int VDMA_START ;
 unsigned long VDMA_XFERSIZE ;
 void* VIDC_PALETTE_SIZE ;
 int acornfb_set_timing (struct fb_info*) ;
 int acornfb_update_dma (struct fb_info*,TYPE_3__*) ;
 TYPE_2__ current_par ;
 int iomd_writel (unsigned long,int ) ;
 int memc_write (int ,unsigned long) ;

__attribute__((used)) static int acornfb_set_par(struct fb_info *info)
{
 switch (info->var.bits_per_pixel) {
 case 1:
  current_par.palette_size = 2;
  info->fix.visual = FB_VISUAL_MONO10;
  break;
 case 2:
  current_par.palette_size = 4;
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 case 4:
  current_par.palette_size = 16;
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 case 8:
  current_par.palette_size = VIDC_PALETTE_SIZE;
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 default:
  BUG();
 }

 info->fix.line_length = (info->var.xres * info->var.bits_per_pixel) / 8;
 acornfb_update_dma(info, &info->var);
 acornfb_set_timing(info);

 return 0;
}
