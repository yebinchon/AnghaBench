
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct TYPE_4__ {int lut; int addr; int cntl; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 int nubus_writeb (unsigned int,int *) ;
 TYPE_2__* rbv_cmap_regs ;

__attribute__((used)) static int rbv_setpalette(unsigned int regno, unsigned int red,
     unsigned int green, unsigned int blue,
     struct fb_info *info)
{
 unsigned long flags;

 local_irq_save(flags);





 regno += 256 - (1 << info->var.bits_per_pixel);


 nubus_writeb(0xFF, &rbv_cmap_regs->cntl);
 nop();


 nubus_writeb(regno, &rbv_cmap_regs->addr);
 nop();


 nubus_writeb(red, &rbv_cmap_regs->lut);
 nop();
 nubus_writeb(green, &rbv_cmap_regs->lut);
 nop();
 nubus_writeb(blue, &rbv_cmap_regs->lut);

 local_irq_restore(flags);
 return 0;
}
