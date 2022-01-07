
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_cmap_regs {int lut; int addr; } ;
struct fb_info {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 int nubus_writeb (unsigned int,int *) ;
 struct mdc_cmap_regs* slot_addr ;

__attribute__((used)) static int mdc_setpalette(unsigned int regno, unsigned int red,
     unsigned int green, unsigned int blue,
     struct fb_info *info)
{
 struct mdc_cmap_regs *cmap_regs = slot_addr;
 unsigned long flags;

 local_irq_save(flags);


 nubus_writeb(regno, &cmap_regs->addr);
 nop();
 nubus_writeb(red, &cmap_regs->lut);
 nop();
 nubus_writeb(green, &cmap_regs->lut);
 nop();
 nubus_writeb(blue, &cmap_regs->lut);

 local_irq_restore(flags);
 return 0;
}
