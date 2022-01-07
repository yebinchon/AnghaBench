
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410fb_info {int dev; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; int screen_base; struct s3c2410fb_info* par; } ;


 int PAGE_ALIGN (int ) ;
 int dma_free_wc (int ,int ,int ,int ) ;

__attribute__((used)) static inline void s3c2410fb_unmap_video_memory(struct fb_info *info)
{
 struct s3c2410fb_info *fbi = info->par;

 dma_free_wc(fbi->dev, PAGE_ALIGN(info->fix.smem_len),
      info->screen_base, info->fix.smem_start);
}
