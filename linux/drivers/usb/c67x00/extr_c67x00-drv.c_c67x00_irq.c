
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct c67x00_sie {int (* irq ) (struct c67x00_sie*,int,int) ;} ;
struct c67x00_device {TYPE_1__* pdev; struct c67x00_sie* sie; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int C67X00_SIES ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SIEMSG_FLG (int) ;
 int c67x00_ll_fetch_siemsg (struct c67x00_device*,int) ;
 int c67x00_ll_hpi_status (struct c67x00_device*) ;
 int c67x00_ll_irq (struct c67x00_device*,int) ;
 int dev_warn (int *,char*,int) ;
 int stub1 (struct c67x00_sie*,int,int) ;

__attribute__((used)) static irqreturn_t c67x00_irq(int irq, void *__dev)
{
 struct c67x00_device *c67x00 = __dev;
 struct c67x00_sie *sie;
 u16 msg, int_status;
 int i, count = 8;

 int_status = c67x00_ll_hpi_status(c67x00);
 if (!int_status)
  return IRQ_NONE;

 while (int_status != 0 && (count-- >= 0)) {
  c67x00_ll_irq(c67x00, int_status);
  for (i = 0; i < C67X00_SIES; i++) {
   sie = &c67x00->sie[i];
   msg = 0;
   if (int_status & SIEMSG_FLG(i))
    msg = c67x00_ll_fetch_siemsg(c67x00, i);
   if (sie->irq)
    sie->irq(sie, int_status, msg);
  }
  int_status = c67x00_ll_hpi_status(c67x00);
 }

 if (int_status)
  dev_warn(&c67x00->pdev->dev, "Not all interrupts handled! "
    "status = 0x%04x\n", int_status);

 return IRQ_HANDLED;
}
