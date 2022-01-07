
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {int lock; } ;
struct msm_dma {int chan; scalar_t__ count; } ;
struct msm_port {int break_detected; scalar_t__ imr; scalar_t__ is_uartdm; struct msm_dma rx_dma; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UART_CR ;
 scalar_t__ UART_CR_CMD_RESET_RXBREAK_START ;
 scalar_t__ UART_CR_CMD_RESET_STALE_INT ;
 scalar_t__ UART_CR_CMD_STALE_EVENT_DISABLE ;
 int UART_IMR ;
 unsigned int UART_IMR_DELTA_CTS ;
 unsigned int UART_IMR_RXBREAK_START ;
 unsigned int UART_IMR_RXLEV ;
 unsigned int UART_IMR_RXSTALE ;
 unsigned int UART_IMR_TXLEV ;
 int UART_MISR ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int dmaengine_terminate_all (int ) ;
 int msm_handle_delta_cts (struct uart_port*) ;
 int msm_handle_rx (struct uart_port*) ;
 int msm_handle_rx_dm (struct uart_port*,unsigned int) ;
 int msm_handle_tx (struct uart_port*) ;
 unsigned int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t msm_uart_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 struct msm_port *msm_port = UART_TO_MSM(port);
 struct msm_dma *dma = &msm_port->rx_dma;
 unsigned long flags;
 unsigned int misr;
 u32 val;

 spin_lock_irqsave(&port->lock, flags);
 misr = msm_read(port, UART_MISR);
 msm_write(port, 0, UART_IMR);

 if (misr & UART_IMR_RXBREAK_START) {
  msm_port->break_detected = 1;
  msm_write(port, UART_CR_CMD_RESET_RXBREAK_START, UART_CR);
 }

 if (misr & (UART_IMR_RXLEV | UART_IMR_RXSTALE)) {
  if (dma->count) {
   val = UART_CR_CMD_STALE_EVENT_DISABLE;
   msm_write(port, val, UART_CR);
   val = UART_CR_CMD_RESET_STALE_INT;
   msm_write(port, val, UART_CR);




   dmaengine_terminate_all(dma->chan);
  } else if (msm_port->is_uartdm) {
   msm_handle_rx_dm(port, misr);
  } else {
   msm_handle_rx(port);
  }
 }
 if (misr & UART_IMR_TXLEV)
  msm_handle_tx(port);
 if (misr & UART_IMR_DELTA_CTS)
  msm_handle_delta_cts(port);

 msm_write(port, msm_port->imr, UART_IMR);
 spin_unlock_irqrestore(&port->lock, flags);

 return IRQ_HANDLED;
}
