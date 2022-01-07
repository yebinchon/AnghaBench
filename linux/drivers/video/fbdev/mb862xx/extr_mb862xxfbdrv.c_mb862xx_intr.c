
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb862xxfb_par {scalar_t__ type; } ;
typedef int irqreturn_t ;


 scalar_t__ BT_CARMINE ;
 int GC_CTRL_INT_MASK ;
 int GC_CTRL_STATUS ;
 int GC_IMASK ;
 int GC_IST ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ctrl ;
 int host ;
 unsigned long inreg (int ,int) ;
 int outreg (int ,int,unsigned long) ;

__attribute__((used)) static irqreturn_t mb862xx_intr(int irq, void *dev_id)
{
 struct mb862xxfb_par *par = (struct mb862xxfb_par *) dev_id;
 unsigned long reg_ist, mask;

 if (!par)
  return IRQ_NONE;

 if (par->type == BT_CARMINE) {

  reg_ist = inreg(ctrl, GC_CTRL_STATUS);
  mask = inreg(ctrl, GC_CTRL_INT_MASK);
  if (reg_ist == 0)
   return IRQ_HANDLED;

  reg_ist &= mask;
  if (reg_ist == 0)
   return IRQ_HANDLED;


  outreg(ctrl, 0x0, reg_ist);
 } else {

  reg_ist = inreg(host, GC_IST);
  mask = inreg(host, GC_IMASK);

  reg_ist &= mask;
  if (reg_ist == 0)
   return IRQ_HANDLED;


  outreg(host, GC_IST, ~reg_ist);
 }
 return IRQ_HANDLED;
}
