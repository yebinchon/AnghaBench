
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxafb_info {TYPE_1__* overlay; int command_done; int disable_done; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int branch_done; } ;


 int IRQ_HANDLED ;
 int LCCR0 ;
 unsigned int LCCR0_LDM ;
 int LCSR ;
 int LCSR1 ;
 unsigned int LCSR1_BS (int) ;
 unsigned int LCSR_CMD_INT ;
 unsigned int LCSR_LDD ;
 int complete (int *) ;
 unsigned int lcd_readl (struct pxafb_info*,int ) ;
 int lcd_writel (struct pxafb_info*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t pxafb_handle_irq(int irq, void *dev_id)
{
 struct pxafb_info *fbi = dev_id;
 unsigned int lccr0, lcsr;

 lcsr = lcd_readl(fbi, LCSR);
 if (lcsr & LCSR_LDD) {
  lccr0 = lcd_readl(fbi, LCCR0);
  lcd_writel(fbi, LCCR0, lccr0 | LCCR0_LDM);
  complete(&fbi->disable_done);
 }





 lcd_writel(fbi, LCSR, lcsr);
 return IRQ_HANDLED;
}
