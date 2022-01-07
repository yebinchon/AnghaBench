
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* red; int* green; int* blue; } ;
struct fb_info {TYPE_1__ cmap; } ;
struct TYPE_4__ {int lut; int reset; } ;


 TYPE_2__* dafb_cmap_regs ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nop () ;
 int nubus_writeb (unsigned int,int *) ;
 int nubus_writel (int ,int *) ;

__attribute__((used)) static int dafb_setpalette(unsigned int regno, unsigned int red,
      unsigned int green, unsigned int blue,
      struct fb_info *info)
{
 static int lastreg = -2;
 unsigned long flags;

 local_irq_save(flags);





 if (regno != lastreg + 1) {
  int i;


  nubus_writel(0, &dafb_cmap_regs->reset);
  nop();


  for (i = 0; i < regno; i++) {
   nubus_writeb(info->cmap.red[i] >> 8,
         &dafb_cmap_regs->lut);
   nop();
   nubus_writeb(info->cmap.green[i] >> 8,
         &dafb_cmap_regs->lut);
   nop();
   nubus_writeb(info->cmap.blue[i] >> 8,
         &dafb_cmap_regs->lut);
   nop();
  }
 }

 nubus_writeb(red, &dafb_cmap_regs->lut);
 nop();
 nubus_writeb(green, &dafb_cmap_regs->lut);
 nop();
 nubus_writeb(blue, &dafb_cmap_regs->lut);

 local_irq_restore(flags);
 lastreg = regno;
 return 0;
}
