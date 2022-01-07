
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct sa1100fb_info {int reg_lccr0; TYPE_2__ fb; } ;


 int GAFR ;
 int GPDR ;
 int GPIO_LDD10 ;
 int GPIO_LDD11 ;
 int GPIO_LDD12 ;
 int GPIO_LDD13 ;
 int GPIO_LDD14 ;
 int GPIO_LDD15 ;
 int GPIO_LDD8 ;
 int GPIO_LDD9 ;
 int LCCR0_Act ;
 int LCCR0_CMS ;
 int LCCR0_Color ;
 int LCCR0_Dual ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void sa1100fb_setup_gpio(struct sa1100fb_info *fbi)
{
 u_int mask = 0;
 if ((fbi->reg_lccr0 & LCCR0_CMS) == LCCR0_Color &&
     (fbi->reg_lccr0 & (LCCR0_Dual|LCCR0_Act)) != 0) {
  mask = GPIO_LDD11 | GPIO_LDD10 | GPIO_LDD9 | GPIO_LDD8;

  if (fbi->fb.var.bits_per_pixel > 8 ||
      (fbi->reg_lccr0 & (LCCR0_Dual|LCCR0_Act)) == LCCR0_Dual)
   mask |= GPIO_LDD15 | GPIO_LDD14 | GPIO_LDD13 | GPIO_LDD12;

 }

 if (mask) {
  unsigned long flags;
  local_irq_save(flags);
  GPDR |= mask;
  GAFR |= mask;
  local_irq_restore(flags);
 }
}
