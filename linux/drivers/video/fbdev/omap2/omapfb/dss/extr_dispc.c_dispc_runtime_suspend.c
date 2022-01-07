
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int is_enabled; int irq; } ;


 TYPE_1__ dispc ;
 int dispc_save_context () ;
 int smp_wmb () ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int dispc_runtime_suspend(struct device *dev)
{
 dispc.is_enabled = 0;

 smp_wmb();

 synchronize_irq(dispc.irq);

 dispc_save_context();

 return 0;
}
