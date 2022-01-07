
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int user_data; int (* user_handler ) (int,int ) ;int is_enabled; } ;


 int IRQ_NONE ;
 TYPE_1__ dispc ;
 int stub1 (int,int ) ;

__attribute__((used)) static irqreturn_t dispc_irq_handler(int irq, void *arg)
{
 if (!dispc.is_enabled)
  return IRQ_NONE;

 return dispc.user_handler(irq, dispc.user_data);
}
