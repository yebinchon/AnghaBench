
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int emergency_restart () ;
 int pr_crit (char*) ;

__attribute__((used)) static irqreturn_t eurwdt_interrupt(int irq, void *dev_id)
{
 pr_crit("timeout WDT timeout\n");




 pr_crit("Initiating system reboot\n");
 emergency_restart();

 return IRQ_HANDLED;
}
