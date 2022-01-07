
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; } ;


 int SPRD_ICLR ;
 int SPRD_IEN ;
 int devm_free_irq (int ,int ,struct uart_port*) ;
 int serial_out (struct uart_port*,int ,int ) ;
 int sprd_release_dma (struct uart_port*) ;

__attribute__((used)) static void sprd_shutdown(struct uart_port *port)
{
 sprd_release_dma(port);
 serial_out(port, SPRD_IEN, 0);
 serial_out(port, SPRD_ICLR, ~0);
 devm_free_irq(port->dev, port->irq, port);
}
