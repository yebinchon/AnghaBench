
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc16is7xx_port {int efr_lock; TYPE_1__* devtype; } ;
struct kthread_work {int dummy; } ;
struct TYPE_2__ {int nr_uart; } ;


 int irq_work ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sc16is7xx_port_irq (struct sc16is7xx_port*,int) ;
 struct sc16is7xx_port* to_sc16is7xx_port (struct kthread_work*,int ) ;

__attribute__((used)) static void sc16is7xx_ist(struct kthread_work *ws)
{
 struct sc16is7xx_port *s = to_sc16is7xx_port(ws, irq_work);

 mutex_lock(&s->efr_lock);

 while (1) {
  bool keep_polling = 0;
  int i;

  for (i = 0; i < s->devtype->nr_uart; ++i)
   keep_polling |= sc16is7xx_port_irq(s, i);
  if (!keep_polling)
   break;
 }

 mutex_unlock(&s->efr_lock);
}
