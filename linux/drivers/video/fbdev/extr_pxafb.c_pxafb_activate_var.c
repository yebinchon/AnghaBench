
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct pxafb_info {int lccr0; int reg_lccr0; int reg_lccr3; int reg_lccr4; int lccr4; int reg_lccr1; int reg_lccr2; int* fdadr; } ;
struct fb_var_screeninfo {int dummy; } ;


 int C_REENABLE ;
 int FDADR0 ;
 int FDADR1 ;
 int LCCR0 ;
 int LCCR0_BM ;
 int LCCR0_EFM ;
 int LCCR0_IUM ;
 int LCCR0_LCDT ;
 int LCCR0_LDM ;
 int LCCR0_OUM ;
 int LCCR0_QDM ;
 int LCCR0_SDS ;
 int LCCR0_SFM ;
 int LCCR1 ;
 int LCCR2 ;
 int LCCR3 ;
 int LCCR4 ;
 int LCCR4_PAL_FOR_MASK ;
 int lcd_readl (struct pxafb_info*,int ) ;
 int local_irq_restore (int ) ;
 int local_irq_save (int ) ;
 int pxafb_schedule_work (struct pxafb_info*,int ) ;
 int pxafb_var_to_lccr3 (struct fb_var_screeninfo*) ;
 int setup_base_frame (struct pxafb_info*,struct fb_var_screeninfo*,int ) ;
 int setup_parallel_timing (struct pxafb_info*,struct fb_var_screeninfo*) ;
 int setup_smart_timing (struct pxafb_info*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int pxafb_activate_var(struct fb_var_screeninfo *var,
         struct pxafb_info *fbi)
{
 u_long flags;


 local_irq_save(flags);






  setup_parallel_timing(fbi, var);

 setup_base_frame(fbi, var, 0);

 fbi->reg_lccr0 = fbi->lccr0 |
  (LCCR0_LDM | LCCR0_SFM | LCCR0_IUM | LCCR0_EFM |
   LCCR0_QDM | LCCR0_BM | LCCR0_OUM);

 fbi->reg_lccr3 |= pxafb_var_to_lccr3(var);

 fbi->reg_lccr4 = lcd_readl(fbi, LCCR4) & ~LCCR4_PAL_FOR_MASK;
 fbi->reg_lccr4 |= (fbi->lccr4 & LCCR4_PAL_FOR_MASK);
 local_irq_restore(flags);





 if ((lcd_readl(fbi, LCCR0) != fbi->reg_lccr0) ||
     (lcd_readl(fbi, LCCR1) != fbi->reg_lccr1) ||
     (lcd_readl(fbi, LCCR2) != fbi->reg_lccr2) ||
     (lcd_readl(fbi, LCCR3) != fbi->reg_lccr3) ||
     (lcd_readl(fbi, LCCR4) != fbi->reg_lccr4) ||
     (lcd_readl(fbi, FDADR0) != fbi->fdadr[0]) ||
     ((fbi->lccr0 & LCCR0_SDS) &&
     (lcd_readl(fbi, FDADR1) != fbi->fdadr[1])))
  pxafb_schedule_work(fbi, C_REENABLE);

 return 0;
}
