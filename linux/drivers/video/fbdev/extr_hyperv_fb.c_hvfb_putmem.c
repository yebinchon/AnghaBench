
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvfb_par {TYPE_1__* mem; } ;
struct fb_info {int screen_base; struct hvfb_par* par; } ;
struct TYPE_2__ {int start; } ;


 int iounmap (int ) ;
 int screen_fb_size ;
 int vmbus_free_mmio (int ,int ) ;

__attribute__((used)) static void hvfb_putmem(struct fb_info *info)
{
 struct hvfb_par *par = info->par;

 iounmap(info->screen_base);
 vmbus_free_mmio(par->mem->start, screen_fb_size);
 par->mem = ((void*)0);
}
