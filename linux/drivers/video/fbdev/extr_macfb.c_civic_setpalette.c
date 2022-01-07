
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int lut; int status2; int addr; } ;


 TYPE_1__* civic_cmap_regs ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 void* nubus_readb (int *) ;
 int nubus_writeb (unsigned char,int *) ;

__attribute__((used)) static int civic_setpalette(unsigned int regno, unsigned int red,
       unsigned int green, unsigned int blue,
       struct fb_info *info)
{
 unsigned long flags;
 int clut_status;

 local_irq_save(flags);


 nubus_writeb(regno, &civic_cmap_regs->addr);
 nop();





 clut_status = nubus_readb(&civic_cmap_regs->status2);

 if ((clut_status & 0x0008) == 0)
 {
  nubus_writeb(red, &civic_cmap_regs->lut);
  nop();
  nubus_writeb(green, &civic_cmap_regs->lut);
  nop();
  nubus_writeb(blue, &civic_cmap_regs->lut);
  nop();
  nubus_writeb(0x00, &civic_cmap_regs->lut);
 }
 else
 {
  unsigned char junk;

  junk = nubus_readb(&civic_cmap_regs->lut);
  nop();
  junk = nubus_readb(&civic_cmap_regs->lut);
  nop();
  junk = nubus_readb(&civic_cmap_regs->lut);
  nop();
  junk = nubus_readb(&civic_cmap_regs->lut);
  nop();

  if ((clut_status & 0x000D) != 0)
  {
   nubus_writeb(0x00, &civic_cmap_regs->lut);
   nop();
   nubus_writeb(0x00, &civic_cmap_regs->lut);
   nop();
  }

  nubus_writeb(red, &civic_cmap_regs->lut);
  nop();
  nubus_writeb(green, &civic_cmap_regs->lut);
  nop();
  nubus_writeb(blue, &civic_cmap_regs->lut);
  nop();
  nubus_writeb(junk, &civic_cmap_regs->lut);
 }

 local_irq_restore(flags);
 return 0;
}
