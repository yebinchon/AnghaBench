
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct ar933x_uart_port {TYPE_1__ port; } ;
typedef int irqreturn_t ;


 unsigned int AR933X_UART_CS_HOST_INT ;
 int AR933X_UART_CS_REG ;
 int AR933X_UART_INT_EN_REG ;
 int AR933X_UART_INT_REG ;
 unsigned int AR933X_UART_INT_RX_VALID ;
 unsigned int AR933X_UART_INT_TX_EMPTY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int ar933x_uart_read (struct ar933x_uart_port*,int ) ;
 int ar933x_uart_rx_chars (struct ar933x_uart_port*) ;
 int ar933x_uart_stop_tx_interrupt (struct ar933x_uart_port*) ;
 int ar933x_uart_tx_chars (struct ar933x_uart_port*) ;
 int ar933x_uart_write (struct ar933x_uart_port*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ar933x_uart_interrupt(int irq, void *dev_id)
{
 struct ar933x_uart_port *up = dev_id;
 unsigned int status;

 status = ar933x_uart_read(up, AR933X_UART_CS_REG);
 if ((status & AR933X_UART_CS_HOST_INT) == 0)
  return IRQ_NONE;

 spin_lock(&up->port.lock);

 status = ar933x_uart_read(up, AR933X_UART_INT_REG);
 status &= ar933x_uart_read(up, AR933X_UART_INT_EN_REG);

 if (status & AR933X_UART_INT_RX_VALID) {
  ar933x_uart_write(up, AR933X_UART_INT_REG,
      AR933X_UART_INT_RX_VALID);
  ar933x_uart_rx_chars(up);
 }

 if (status & AR933X_UART_INT_TX_EMPTY) {
  ar933x_uart_write(up, AR933X_UART_INT_REG,
      AR933X_UART_INT_TX_EMPTY);
  ar933x_uart_stop_tx_interrupt(up);
  ar933x_uart_tx_chars(up);
 }

 spin_unlock(&up->port.lock);

 return IRQ_HANDLED;
}
