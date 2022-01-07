
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int xres_virtual; int yres_virtual; int bits_per_pixel; } ;
struct TYPE_2__ {int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_base; int device; struct fb_var_screeninfo var; } ;
struct atmel_lcdfb_info {int smem_len; struct fb_info* info; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_wc (int ,int ,int *,int ) ;
 int max (unsigned int,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int atmel_lcdfb_alloc_video_memory(struct atmel_lcdfb_info *sinfo)
{
 struct fb_info *info = sinfo->info;
 struct fb_var_screeninfo *var = &info->var;
 unsigned int smem_len;

 smem_len = (var->xres_virtual * var->yres_virtual
      * ((var->bits_per_pixel + 7) / 8));
 info->fix.smem_len = max(smem_len, sinfo->smem_len);

 info->screen_base = dma_alloc_wc(info->device, info->fix.smem_len,
      (dma_addr_t *)&info->fix.smem_start,
      GFP_KERNEL);

 if (!info->screen_base) {
  return -ENOMEM;
 }

 memset(info->screen_base, 0, info->fix.smem_len);

 return 0;
}
