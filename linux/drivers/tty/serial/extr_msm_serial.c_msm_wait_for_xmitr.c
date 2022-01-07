
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_CR ;
 int UART_CR_CMD_RESET_TX_READY ;
 int UART_ISR ;
 int UART_ISR_TX_READY ;
 int UART_SR ;
 int UART_SR_TX_EMPTY ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void msm_wait_for_xmitr(struct uart_port *port)
{
 unsigned int timeout = 500000;

 while (!(msm_read(port, UART_SR) & UART_SR_TX_EMPTY)) {
  if (msm_read(port, UART_ISR) & UART_ISR_TX_READY)
   break;
  udelay(1);
  if (!timeout--)
   break;
 }
 msm_write(port, UART_CR_CMD_RESET_TX_READY, UART_CR);
}
