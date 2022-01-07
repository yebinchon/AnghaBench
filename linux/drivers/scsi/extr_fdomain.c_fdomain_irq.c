
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdomain {int work; int cur_cmd; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int ASTAT_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ REG_ASTAT ;
 scalar_t__ REG_ICTL ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t fdomain_irq(int irq, void *dev_id)
{
 struct fdomain *fd = dev_id;


 if ((inb(fd->base + REG_ASTAT) & ASTAT_IRQ) == 0)
  return IRQ_NONE;

 outb(0, fd->base + REG_ICTL);


 if (!fd->cur_cmd)
  return IRQ_NONE;

 schedule_work(&fd->work);

 return IRQ_HANDLED;
}
