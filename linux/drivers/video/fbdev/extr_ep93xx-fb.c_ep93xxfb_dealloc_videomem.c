
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ screen_base; int dev; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void ep93xxfb_dealloc_videomem(struct fb_info *info)
{
 if (info->screen_base)
  dma_free_coherent(info->dev, info->fix.smem_len,
      info->screen_base, info->fix.smem_start);
}
