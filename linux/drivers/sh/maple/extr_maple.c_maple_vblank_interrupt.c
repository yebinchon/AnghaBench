
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int maple_vblank_process ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t maple_vblank_interrupt(int irq, void *dev_id)
{
 schedule_work(&maple_vblank_process);
 return IRQ_HANDLED;
}
