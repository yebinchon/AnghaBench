
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long smem_start; } ;
struct fb_info {int cmap; int flags; int * fbops; int var; TYPE_1__ fix; int screen_base; } ;


 int FBINFO_DEFAULT ;
 int chips_hw_init () ;
 TYPE_1__ chipsfb_fix ;
 int chipsfb_ops ;
 int chipsfb_var ;
 int fb_alloc_cmap (int *,int,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void init_chips(struct fb_info *p, unsigned long addr)
{
 memset(p->screen_base, 0, 0x100000);

 p->fix = chipsfb_fix;
 p->fix.smem_start = addr;

 p->var = chipsfb_var;

 p->fbops = &chipsfb_ops;
 p->flags = FBINFO_DEFAULT;

 fb_alloc_cmap(&p->cmap, 256, 0);

 chips_hw_init();
}
