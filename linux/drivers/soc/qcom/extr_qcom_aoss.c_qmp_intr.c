
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp {int event; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static irqreturn_t qmp_intr(int irq, void *data)
{
 struct qmp *qmp = data;

 wake_up_interruptible_all(&qmp->event);

 return IRQ_HANDLED;
}
