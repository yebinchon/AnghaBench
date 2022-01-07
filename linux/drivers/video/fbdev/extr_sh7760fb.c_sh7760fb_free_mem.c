
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh7760fb_par {scalar_t__ fbdma; } ;
struct fb_info {scalar_t__ screen_size; int * screen_base; int dev; struct sh7760fb_par* par; } ;


 int dma_free_coherent (int ,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static void sh7760fb_free_mem(struct fb_info *info)
{
 struct sh7760fb_par *par = info->par;

 if (!info->screen_base)
  return;

 dma_free_coherent(info->dev, info->screen_size,
     info->screen_base, par->fbdma);

 par->fbdma = 0;
 info->screen_base = ((void*)0);
 info->screen_size = 0;
}
