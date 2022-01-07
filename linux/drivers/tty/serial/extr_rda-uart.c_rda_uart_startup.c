
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; int irq; } ;


 int IRQF_NO_SUSPEND ;
 int RDA_UART_CTRL ;
 int RDA_UART_ENABLE ;
 int RDA_UART_IRQ_MASK ;
 int RDA_UART_RX_DATA_AVAILABLE ;
 int RDA_UART_RX_TIMEOUT ;
 int rda_interrupt ;
 int rda_uart_read (struct uart_port*,int ) ;
 int rda_uart_write (struct uart_port*,int,int ) ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rda_uart_startup(struct uart_port *port)
{
 unsigned long flags;
 int ret;
 u32 val;

 spin_lock_irqsave(&port->lock, flags);
 rda_uart_write(port, 0, RDA_UART_IRQ_MASK);
 spin_unlock_irqrestore(&port->lock, flags);

 ret = request_irq(port->irq, rda_interrupt, IRQF_NO_SUSPEND,
     "rda-uart", port);
 if (ret)
  return ret;

 spin_lock_irqsave(&port->lock, flags);

 val = rda_uart_read(port, RDA_UART_CTRL);
 val |= RDA_UART_ENABLE;
 rda_uart_write(port, val, RDA_UART_CTRL);


 val = rda_uart_read(port, RDA_UART_IRQ_MASK);
 val |= (RDA_UART_RX_DATA_AVAILABLE | RDA_UART_RX_TIMEOUT);
 rda_uart_write(port, val, RDA_UART_IRQ_MASK);

 spin_unlock_irqrestore(&port->lock, flags);

 return 0;
}
