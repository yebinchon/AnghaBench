
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cdns3_hw_role_switch (struct cdns3*) ;

__attribute__((used)) static irqreturn_t cdns3_drd_thread_irq(int irq, void *data)
{
 struct cdns3 *cdns = data;

 cdns3_hw_role_switch(cdns);

 return IRQ_HANDLED;
}
