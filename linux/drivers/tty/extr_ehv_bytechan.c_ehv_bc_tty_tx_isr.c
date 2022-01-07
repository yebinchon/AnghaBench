
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehv_bc_data {int port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ehv_bc_tx_dequeue (struct ehv_bc_data*) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static irqreturn_t ehv_bc_tty_tx_isr(int irq, void *data)
{
 struct ehv_bc_data *bc = data;

 ehv_bc_tx_dequeue(bc);
 tty_port_tty_wakeup(&bc->port);

 return IRQ_HANDLED;
}
