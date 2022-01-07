
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; int lock; } ;


 int DRIVER_NAME ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct uart_port*) ;
 int linflex_int ;
 int linflex_setup_watermark (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int linflex_startup(struct uart_port *port)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 linflex_setup_watermark(port);

 spin_unlock_irqrestore(&port->lock, flags);

 ret = devm_request_irq(port->dev, port->irq, linflex_int, 0,
          DRIVER_NAME, port);

 return ret;
}
