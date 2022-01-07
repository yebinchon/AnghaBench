
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxbf_tmfifo_irq_info {TYPE_1__* fifo; int index; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int work; int pend_events; } ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t mlxbf_tmfifo_irq_handler(int irq, void *arg)
{
 struct mlxbf_tmfifo_irq_info *irq_info = arg;

 if (!test_and_set_bit(irq_info->index, &irq_info->fifo->pend_events))
  schedule_work(&irq_info->fifo->work);

 return IRQ_HANDLED;
}
