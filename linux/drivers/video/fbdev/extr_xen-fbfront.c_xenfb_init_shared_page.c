
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xenfb_info {int nr_pages; TYPE_3__* page; void** gfns; void** fb; } ;
struct TYPE_5__ {int smem_len; int line_length; } ;
struct TYPE_4__ {int bits_per_pixel; int yres; int xres; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; } ;
struct TYPE_6__ {scalar_t__ out_prod; scalar_t__ out_cons; scalar_t__ in_prod; scalar_t__ in_cons; int mem_length; int line_length; int depth; int height; int width; void** pd; } ;


 int PAGE_SIZE ;
 void* vmalloc_to_gfn (void**) ;

__attribute__((used)) static void xenfb_init_shared_page(struct xenfb_info *info,
       struct fb_info *fb_info)
{
 int i;
 int epd = PAGE_SIZE / sizeof(info->gfns[0]);

 for (i = 0; i < info->nr_pages; i++)
  info->gfns[i] = vmalloc_to_gfn(info->fb + i * PAGE_SIZE);

 for (i = 0; i * epd < info->nr_pages; i++)
  info->page->pd[i] = vmalloc_to_gfn(&info->gfns[i * epd]);

 info->page->width = fb_info->var.xres;
 info->page->height = fb_info->var.yres;
 info->page->depth = fb_info->var.bits_per_pixel;
 info->page->line_length = fb_info->fix.line_length;
 info->page->mem_length = fb_info->fix.smem_len;
 info->page->in_cons = info->page->in_prod = 0;
 info->page->out_cons = info->page->out_prod = 0;
}
