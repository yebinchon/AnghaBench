
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct TYPE_4__ {int lut; int addr; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 int nubus_writeb (unsigned int,int *) ;
 TYPE_2__* v8_brazil_cmap_regs ;

__attribute__((used)) static int v8_brazil_setpalette(unsigned int regno, unsigned int red,
    unsigned int green, unsigned int blue,
    struct fb_info *info)
{
 unsigned int bpp = info->var.bits_per_pixel;
 unsigned long flags;

 local_irq_save(flags);







 regno = (regno << (8 - bpp)) | (0xFF >> bpp);
 nubus_writeb(regno, &v8_brazil_cmap_regs->addr);
 nop();


 nubus_writeb(red, &v8_brazil_cmap_regs->lut);
 nop();
 nubus_writeb(green, &v8_brazil_cmap_regs->lut);
 nop();
 nubus_writeb(blue, &v8_brazil_cmap_regs->lut);

 local_irq_restore(flags);
 return 0;
}
