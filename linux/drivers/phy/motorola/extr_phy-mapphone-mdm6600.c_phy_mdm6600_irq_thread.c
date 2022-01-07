
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_mdm6600 {int status_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t phy_mdm6600_irq_thread(int irq, void *data)
{
 struct phy_mdm6600 *ddata = data;

 schedule_delayed_work(&ddata->status_work, msecs_to_jiffies(10));

 return IRQ_HANDLED;
}
