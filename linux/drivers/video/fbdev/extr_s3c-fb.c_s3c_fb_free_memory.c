
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_fb_win {struct fb_info* fbinfo; } ;
struct s3c_fb {int dev; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ screen_buffer; } ;


 int PAGE_ALIGN (int ) ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void s3c_fb_free_memory(struct s3c_fb *sfb, struct s3c_fb_win *win)
{
 struct fb_info *fbi = win->fbinfo;

 if (fbi->screen_buffer)
  dma_free_wc(sfb->dev, PAGE_ALIGN(fbi->fix.smem_len),
       fbi->screen_buffer, fbi->fix.smem_start);
}
