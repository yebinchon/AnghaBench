
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxbf_tmfifo {TYPE_1__* irq_info; } ;
struct TYPE_2__ {int irq; } ;


 int MLXBF_TM_MAX_IRQ ;
 int disable_irq (int) ;

__attribute__((used)) static void mlxbf_tmfifo_disable_irqs(struct mlxbf_tmfifo *fifo)
{
 int i, irq;

 for (i = 0; i < MLXBF_TM_MAX_IRQ; i++) {
  irq = fifo->irq_info[i].irq;
  fifo->irq_info[i].irq = 0;
  disable_irq(irq);
 }
}
