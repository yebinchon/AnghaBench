
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UART_SR ;
 int UART_SR_TX_EMPTY ;
 int msm_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int msm_tx_empty(struct uart_port *port)
{
 return (msm_read(port, UART_SR) & UART_SR_TX_EMPTY) ? TIOCSER_TEMT : 0;
}
