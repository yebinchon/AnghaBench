
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxreg_hotplug_priv_data {int dwork_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t mlxreg_hotplug_irq_handler(int irq, void *dev)
{
 struct mlxreg_hotplug_priv_data *priv;

 priv = (struct mlxreg_hotplug_priv_data *)dev;


 schedule_delayed_work(&priv->dwork_irq, 0);

 return IRQ_HANDLED;
}
