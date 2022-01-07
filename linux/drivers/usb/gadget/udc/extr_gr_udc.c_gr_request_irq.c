
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gr_udc {int dev; } ;


 int IRQF_SHARED ;
 int devm_request_threaded_irq (int ,int,int ,int ,int ,int ,struct gr_udc*) ;
 int driver_name ;
 int gr_irq ;
 int gr_irq_handler ;

__attribute__((used)) static int gr_request_irq(struct gr_udc *dev, int irq)
{
 return devm_request_threaded_irq(dev->dev, irq, gr_irq, gr_irq_handler,
      IRQF_SHARED, driver_name, dev);
}
