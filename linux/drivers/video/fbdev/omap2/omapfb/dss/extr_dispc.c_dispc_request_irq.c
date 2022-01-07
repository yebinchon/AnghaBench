
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * irq_handler_t ;
struct TYPE_5__ {int * user_data; int * user_handler; int irq; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int devm_request_irq (int *,int ,int ,int ,char*,TYPE_2__*) ;
 TYPE_2__ dispc ;
 int dispc_irq_handler ;
 int smp_wmb () ;

int dispc_request_irq(irq_handler_t handler, void *dev_id)
{
 int r;

 if (dispc.user_handler != ((void*)0))
  return -EBUSY;

 dispc.user_handler = handler;
 dispc.user_data = dev_id;


 smp_wmb();

 r = devm_request_irq(&dispc.pdev->dev, dispc.irq, dispc_irq_handler,
        IRQF_SHARED, "OMAP DISPC", &dispc);
 if (r) {
  dispc.user_handler = ((void*)0);
  dispc.user_data = ((void*)0);
 }

 return r;
}
