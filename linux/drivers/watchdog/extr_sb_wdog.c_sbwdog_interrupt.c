
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int identity; } ;


 int IRQ_HANDLED ;
 int __raw_readb (char*) ;
 int __raw_readq (char*) ;
 int __raw_writeb (int,char*) ;
 TYPE_1__ ident ;
 int pr_crit (char*,int ,unsigned long,unsigned long) ;
 char* user_dog ;

irqreturn_t sbwdog_interrupt(int irq, void *addr)
{
 unsigned long wd_init;
 char *wd_cfg_reg = (char *)addr;
 u8 cfg;

 cfg = __raw_readb(wd_cfg_reg);
 wd_init = __raw_readq(wd_cfg_reg - 8) & 0x7fffff;




 if (wd_cfg_reg == user_dog)
  pr_crit("%s in danger of initiating system reset "
   "in %ld.%01ld seconds\n",
   ident.identity,
   wd_init / 1000000, (wd_init / 100000) % 10);
 else
  cfg |= 1;

 __raw_writeb(cfg, wd_cfg_reg);

 return IRQ_HANDLED;
}
