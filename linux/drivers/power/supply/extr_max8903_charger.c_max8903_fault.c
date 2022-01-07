
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8903_pdata {int flt; } ;
struct max8903_data {int fault; int dev; struct max8903_pdata* pdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_err (int ,char*) ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static irqreturn_t max8903_fault(int irq, void *_data)
{
 struct max8903_data *data = _data;
 struct max8903_pdata *pdata = data->pdata;
 bool fault;

 fault = gpio_get_value(pdata->flt) ? 0 : 1;

 if (fault == data->fault)
  return IRQ_HANDLED;

 data->fault = fault;

 if (fault)
  dev_err(data->dev, "Charger suffers a fault and stops.\n");
 else
  dev_err(data->dev, "Charger recovered from a fault.\n");

 return IRQ_HANDLED;
}
