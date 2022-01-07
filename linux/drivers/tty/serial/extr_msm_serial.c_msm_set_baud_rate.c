
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned long uartclk; int fifosize; int lock; } ;
struct msm_port {int imr; scalar_t__ is_uartdm; int clk; } ;
struct msm_baud_map {unsigned long divisor; int code; unsigned int rxstale; } ;


 int UARTDM_DMRX ;
 int UART_CR ;
 int UART_CR_CMD_PROTECTION_EN ;
 int UART_CR_CMD_RESET_STALE_INT ;
 int UART_CR_CMD_STALE_EVENT_ENABLE ;
 int UART_CR_RX_ENABLE ;
 int UART_CR_TX_ENABLE ;
 int UART_CSR ;
 unsigned int UART_DM_IPR_STALE_TIMEOUT_MSB ;
 int UART_IMR ;
 int UART_IMR_CURRENT_CTS ;
 int UART_IMR_RXBREAK_START ;
 int UART_IMR_RXLEV ;
 int UART_IMR_RXSTALE ;
 int UART_IPR ;
 unsigned int UART_IPR_RXSTALE_LAST ;
 unsigned int UART_IPR_STALE_LSB ;
 unsigned int UART_IPR_STALE_TIMEOUT_MSB ;
 int UART_RFWR ;
 int UART_TFWR ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int clk_set_rate (int ,unsigned long) ;
 struct msm_baud_map* msm_find_best_baud (struct uart_port*,unsigned int,unsigned long*) ;
 int msm_reset (struct uart_port*) ;
 int msm_write (struct uart_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int msm_set_baud_rate(struct uart_port *port, unsigned int baud,
        unsigned long *saved_flags)
{
 unsigned int rxstale, watermark, mask;
 struct msm_port *msm_port = UART_TO_MSM(port);
 const struct msm_baud_map *entry;
 unsigned long flags, rate;

 flags = *saved_flags;
 spin_unlock_irqrestore(&port->lock, flags);

 entry = msm_find_best_baud(port, baud, &rate);
 clk_set_rate(msm_port->clk, rate);
 baud = rate / 16 / entry->divisor;

 spin_lock_irqsave(&port->lock, flags);
 *saved_flags = flags;
 port->uartclk = rate;

 msm_write(port, entry->code, UART_CSR);


 rxstale = entry->rxstale;
 watermark = UART_IPR_STALE_LSB & rxstale;
 if (msm_port->is_uartdm) {
  mask = UART_DM_IPR_STALE_TIMEOUT_MSB;
 } else {
  watermark |= UART_IPR_RXSTALE_LAST;
  mask = UART_IPR_STALE_TIMEOUT_MSB;
 }

 watermark |= mask & (rxstale << 2);

 msm_write(port, watermark, UART_IPR);


 watermark = (port->fifosize * 3) / 4;
 msm_write(port, watermark, UART_RFWR);


 msm_write(port, 10, UART_TFWR);

 msm_write(port, UART_CR_CMD_PROTECTION_EN, UART_CR);
 msm_reset(port);


 msm_write(port, UART_CR_TX_ENABLE | UART_CR_RX_ENABLE, UART_CR);


 msm_port->imr = UART_IMR_RXLEV | UART_IMR_RXSTALE |
   UART_IMR_CURRENT_CTS | UART_IMR_RXBREAK_START;

 msm_write(port, msm_port->imr, UART_IMR);

 if (msm_port->is_uartdm) {
  msm_write(port, UART_CR_CMD_RESET_STALE_INT, UART_CR);
  msm_write(port, 0xFFFFFF, UARTDM_DMRX);
  msm_write(port, UART_CR_CMD_STALE_EVENT_ENABLE, UART_CR);
 }

 return baud;
}
