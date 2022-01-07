
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_fb_win {struct fb_info* fbinfo; struct s3c_fb_pd_win* windata; } ;
struct s3c_fb_pd_win {unsigned int xres; unsigned int yres; unsigned int virtual_x; unsigned int virtual_y; int max_bpp; } ;
struct s3c_fb {int dev; } ;
struct TYPE_2__ {unsigned int smem_len; scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_buffer; } ;
typedef scalar_t__ dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_ALIGN (unsigned int) ;
 int dev_dbg (int ,char*,...) ;
 int dma_alloc_wc (int ,unsigned int,scalar_t__*,int ) ;
 int memset (int ,int,unsigned int) ;

__attribute__((used)) static int s3c_fb_alloc_memory(struct s3c_fb *sfb, struct s3c_fb_win *win)
{
 struct s3c_fb_pd_win *windata = win->windata;
 unsigned int real_size, virt_size, size;
 struct fb_info *fbi = win->fbinfo;
 dma_addr_t map_dma;

 dev_dbg(sfb->dev, "allocating memory for display\n");

 real_size = windata->xres * windata->yres;
 virt_size = windata->virtual_x * windata->virtual_y;

 dev_dbg(sfb->dev, "real_size=%u (%u.%u), virt_size=%u (%u.%u)\n",
  real_size, windata->xres, windata->yres,
  virt_size, windata->virtual_x, windata->virtual_y);

 size = (real_size > virt_size) ? real_size : virt_size;
 size *= (windata->max_bpp > 16) ? 32 : windata->max_bpp;
 size /= 8;

 fbi->fix.smem_len = size;
 size = PAGE_ALIGN(size);

 dev_dbg(sfb->dev, "want %u bytes for window\n", size);

 fbi->screen_buffer = dma_alloc_wc(sfb->dev, size, &map_dma, GFP_KERNEL);
 if (!fbi->screen_buffer)
  return -ENOMEM;

 dev_dbg(sfb->dev, "mapped %x to %p\n",
  (unsigned int)map_dma, fbi->screen_buffer);

 memset(fbi->screen_buffer, 0x0, size);
 fbi->fix.smem_start = map_dma;

 return 0;
}
