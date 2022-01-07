
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; int irq; } ;


 int IRQF_TRIGGER_HIGH ;
 int OWL_UART_CTL ;
 int OWL_UART_CTL_EN ;
 int OWL_UART_CTL_RXIE ;
 int OWL_UART_CTL_TXIE ;
 int OWL_UART_STAT ;
 int OWL_UART_STAT_RIP ;
 int OWL_UART_STAT_RXER ;
 int OWL_UART_STAT_RXST ;
 int OWL_UART_STAT_TFER ;
 int OWL_UART_STAT_TIP ;
 int owl_uart_irq ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_write (struct uart_port*,int,int ) ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int owl_uart_startup(struct uart_port *port)
{
 u32 val;
 unsigned long flags;
 int ret;

 ret = request_irq(port->irq, owl_uart_irq, IRQF_TRIGGER_HIGH,
   "owl-uart", port);
 if (ret)
  return ret;

 spin_lock_irqsave(&port->lock, flags);

 val = owl_uart_read(port, OWL_UART_STAT);
 val |= OWL_UART_STAT_RIP | OWL_UART_STAT_TIP
  | OWL_UART_STAT_RXER | OWL_UART_STAT_TFER | OWL_UART_STAT_RXST;
 owl_uart_write(port, val, OWL_UART_STAT);

 val = owl_uart_read(port, OWL_UART_CTL);
 val |= OWL_UART_CTL_RXIE | OWL_UART_CTL_TXIE;
 val |= OWL_UART_CTL_EN;
 owl_uart_write(port, val, OWL_UART_CTL);

 spin_unlock_irqrestore(&port->lock, flags);

 return 0;
}
