
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int scan_align; int buf_align; int flags; scalar_t__ size; int * addr; } ;
struct TYPE_4__ {unsigned long smem_len; int smem_start; } ;
struct fb_info {TYPE_3__* fbops; TYPE_2__ sprite; TYPE_1__ fix; scalar_t__ screen_base; } ;
struct TYPE_6__ {int fb_cursor; } ;


 int ENXIO ;
 int FB_PIXMAP_IO ;
 scalar_t__ PAGE_SIZE ;
 int atyfb_cursor ;
 scalar_t__ ioremap (unsigned long,int) ;

int aty_init_cursor(struct fb_info *info)
{
 unsigned long addr;

 info->fix.smem_len -= PAGE_SIZE;
 addr = (unsigned long) info->screen_base + info->fix.smem_len;
 info->sprite.addr = (u8 *) addr;


 if (!info->sprite.addr)
  return -ENXIO;
 info->sprite.size = PAGE_SIZE;
 info->sprite.scan_align = 16;
 info->sprite.buf_align = 16;
 info->sprite.flags = FB_PIXMAP_IO;

 info->fbops->fb_cursor = atyfb_cursor;

 return 0;
}
