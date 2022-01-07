
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct imx_port {TYPE_1__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int imx_uart_transmit_buffer (struct imx_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t imx_uart_txint(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;

 spin_lock(&sport->port.lock);
 imx_uart_transmit_buffer(sport);
 spin_unlock(&sport->port.lock);
 return IRQ_HANDLED;
}
