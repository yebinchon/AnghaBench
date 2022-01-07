
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; int irq; int dev; int lock; struct cdns_uart* private_data; } ;
struct cdns_uart {int quirks; } ;


 scalar_t__ CDNS_UART_CR ;
 int CDNS_UART_CR_RXRST ;
 unsigned int CDNS_UART_CR_RX_DIS ;
 unsigned int CDNS_UART_CR_RX_EN ;
 int CDNS_UART_CR_TXRST ;
 unsigned int CDNS_UART_CR_TX_DIS ;
 scalar_t__ CDNS_UART_IER ;
 scalar_t__ CDNS_UART_ISR ;
 unsigned int CDNS_UART_IXR_BRK ;
 scalar_t__ CDNS_UART_MR ;
 unsigned int CDNS_UART_MR_CHARLEN_8_BIT ;
 unsigned int CDNS_UART_MR_CHMODE_NORM ;
 unsigned int CDNS_UART_MR_PARITY_NONE ;
 unsigned int CDNS_UART_MR_STOPMODE_1_BIT ;
 int CDNS_UART_NAME ;
 int CDNS_UART_RXBS_SUPPORT ;
 scalar_t__ CDNS_UART_RXTOUT ;
 scalar_t__ CDNS_UART_RXWM ;
 unsigned int CDNS_UART_RX_IRQS ;
 int cdns_uart_isr ;
 int cpu_relax () ;
 int dev_err (int ,char*,int ,int) ;
 unsigned int readl (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 unsigned int rx_timeout ;
 unsigned int rx_trigger_level ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int cdns_uart_startup(struct uart_port *port)
{
 struct cdns_uart *cdns_uart = port->private_data;
 bool is_brk_support;
 int ret;
 unsigned long flags;
 unsigned int status = 0;

 is_brk_support = cdns_uart->quirks & CDNS_UART_RXBS_SUPPORT;

 spin_lock_irqsave(&port->lock, flags);


 writel(CDNS_UART_CR_TX_DIS | CDNS_UART_CR_RX_DIS,
   port->membase + CDNS_UART_CR);




 writel(CDNS_UART_CR_TXRST | CDNS_UART_CR_RXRST,
   port->membase + CDNS_UART_CR);

 while (readl(port->membase + CDNS_UART_CR) &
  (CDNS_UART_CR_TXRST | CDNS_UART_CR_RXRST))
  cpu_relax();





 status = readl(port->membase + CDNS_UART_CR);
 status &= ~CDNS_UART_CR_RX_DIS;
 status |= CDNS_UART_CR_RX_EN;
 writel(status, port->membase + CDNS_UART_CR);




 writel(CDNS_UART_MR_CHMODE_NORM | CDNS_UART_MR_STOPMODE_1_BIT
  | CDNS_UART_MR_PARITY_NONE | CDNS_UART_MR_CHARLEN_8_BIT,
  port->membase + CDNS_UART_MR);





 writel(rx_trigger_level, port->membase + CDNS_UART_RXWM);





 writel(rx_timeout, port->membase + CDNS_UART_RXTOUT);


 writel(readl(port->membase + CDNS_UART_ISR),
   port->membase + CDNS_UART_ISR);

 spin_unlock_irqrestore(&port->lock, flags);

 ret = request_irq(port->irq, cdns_uart_isr, 0, CDNS_UART_NAME, port);
 if (ret) {
  dev_err(port->dev, "request_irq '%d' failed with %d\n",
   port->irq, ret);
  return ret;
 }


 if (is_brk_support)
  writel(CDNS_UART_RX_IRQS | CDNS_UART_IXR_BRK,
     port->membase + CDNS_UART_IER);
 else
  writel(CDNS_UART_RX_IRQS, port->membase + CDNS_UART_IER);

 return 0;
}
