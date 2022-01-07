
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;
typedef int irqreturn_t ;


 scalar_t__ CDNS_UART_CR ;
 unsigned int CDNS_UART_CR_RX_DIS ;
 scalar_t__ CDNS_UART_ISR ;
 unsigned int CDNS_UART_IXR_RXMASK ;
 unsigned int CDNS_UART_IXR_TXEMPTY ;
 int IRQ_HANDLED ;
 int cdns_uart_handle_rx (void*,unsigned int) ;
 int cdns_uart_handle_tx (void*) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t cdns_uart_isr(int irq, void *dev_id)
{
 struct uart_port *port = (struct uart_port *)dev_id;
 unsigned int isrstatus;

 spin_lock(&port->lock);




 isrstatus = readl(port->membase + CDNS_UART_ISR);
 writel(isrstatus, port->membase + CDNS_UART_ISR);

 if (isrstatus & CDNS_UART_IXR_TXEMPTY) {
  cdns_uart_handle_tx(dev_id);
  isrstatus &= ~CDNS_UART_IXR_TXEMPTY;
 }





 if (isrstatus & CDNS_UART_IXR_RXMASK &&
     !(readl(port->membase + CDNS_UART_CR) & CDNS_UART_CR_RX_DIS))
  cdns_uart_handle_rx(dev_id, isrstatus);

 spin_unlock(&port->lock);
 return IRQ_HANDLED;
}
