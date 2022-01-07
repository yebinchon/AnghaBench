
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SPRD_STS1 ;
 int SPRD_TX_FIFO_CNT_MASK ;
 unsigned int TIOCSER_TEMT ;
 int serial_in (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int sprd_tx_empty(struct uart_port *port)
{
 if (serial_in(port, SPRD_STS1) & SPRD_TX_FIFO_CNT_MASK)
  return 0;
 else
  return TIOCSER_TEMT;
}
