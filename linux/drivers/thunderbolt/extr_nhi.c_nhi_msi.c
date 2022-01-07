
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int interrupt_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t nhi_msi(int irq, void *data)
{
 struct tb_nhi *nhi = data;
 schedule_work(&nhi->interrupt_work);
 return IRQ_HANDLED;
}
