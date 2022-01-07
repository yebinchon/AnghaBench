
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct act8945a_charger {int work; scalar_t__ init_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t act8945a_status_changed(int irq, void *dev_id)
{
 struct act8945a_charger *charger = dev_id;

 if (charger->init_done)
  schedule_work(&charger->work);

 return IRQ_HANDLED;
}
