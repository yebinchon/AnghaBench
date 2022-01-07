
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fb_var_screeninfo {scalar_t__ yres; scalar_t__ yres_virtual; int bits_per_pixel; int xres_virtual; int accel_flags; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;
struct atyfb_par {int mmaped; scalar_t__ open; } ;


 int FB_ACCELF_TEXT ;
 int PAGE_SIZE ;
 int aty_disable_irq (struct atyfb_par*) ;
 struct fb_var_screeninfo default_var ;
 int mdelay (int) ;
 scalar_t__ noaccel ;
 int wait_for_idle (struct atyfb_par*) ;

__attribute__((used)) static int atyfb_release(struct fb_info *info, int user)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;




 if (!user)
  return 0;

 par->open--;
 mdelay(1);
 wait_for_idle(par);

 if (par->open)
  return 0;
 aty_disable_irq(par);

 return 0;
}
