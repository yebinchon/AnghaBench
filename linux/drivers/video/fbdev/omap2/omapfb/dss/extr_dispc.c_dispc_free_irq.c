
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * user_data; int * user_handler; int irq; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int devm_free_irq (int *,int ,TYPE_2__*) ;
 TYPE_2__ dispc ;

void dispc_free_irq(void *dev_id)
{
 devm_free_irq(&dispc.pdev->dev, dispc.irq, &dispc);

 dispc.user_handler = ((void*)0);
 dispc.user_data = ((void*)0);
}
