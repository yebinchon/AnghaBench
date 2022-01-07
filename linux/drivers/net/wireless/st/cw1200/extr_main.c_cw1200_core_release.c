
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {int hw; int hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int __cw1200_irq_enable (struct cw1200_common*,int ) ;
 int cw1200_free_common (int ) ;
 int cw1200_unregister_common (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void cw1200_core_release(struct cw1200_common *self)
{

 self->hwbus_ops->lock(self->hwbus_priv);
 __cw1200_irq_enable(self, 0);
 self->hwbus_ops->unlock(self->hwbus_priv);


 cw1200_unregister_common(self->hw);
 cw1200_free_common(self->hw);
 return;
}
