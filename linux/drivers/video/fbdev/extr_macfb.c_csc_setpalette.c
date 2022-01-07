
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int clut_data; int clut_waddr; } ;


 TYPE_1__* csc_cmap_regs ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nubus_writeb (unsigned int,int *) ;
 int udelay (int) ;

__attribute__((used)) static int csc_setpalette(unsigned int regno, unsigned int red,
     unsigned int green, unsigned int blue,
     struct fb_info *info)
{
 unsigned long flags;

 local_irq_save(flags);

 udelay(1);
 nubus_writeb(regno, &csc_cmap_regs->clut_waddr);
 nubus_writeb(red, &csc_cmap_regs->clut_data);
 nubus_writeb(green, &csc_cmap_regs->clut_data);
 nubus_writeb(blue, &csc_cmap_regs->clut_data);

 local_irq_restore(flags);
 return 0;
}
