
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct pvcalls_fedata {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct pvcalls_fedata* dev_get_drvdata (int *) ;
 int pvcalls_back_work (struct pvcalls_fedata*) ;

__attribute__((used)) static irqreturn_t pvcalls_back_event(int irq, void *dev_id)
{
 struct xenbus_device *dev = dev_id;
 struct pvcalls_fedata *fedata = ((void*)0);

 if (dev == ((void*)0))
  return IRQ_HANDLED;

 fedata = dev_get_drvdata(&dev->dev);
 if (fedata == ((void*)0))
  return IRQ_HANDLED;

 pvcalls_back_work(fedata);
 return IRQ_HANDLED;
}
