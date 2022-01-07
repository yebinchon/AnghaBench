
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UART_CTRL_TE ;
 int UART_GET_CTRL (struct uart_port*) ;
 int UART_GET_STATUS (struct uart_port*) ;
 int UART_PUT_CHAR (struct uart_port*,int ) ;
 int UART_PUT_CTRL (struct uart_port*,int) ;
 int UART_TX_READY (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int apbuart_scan_fifo_size(struct uart_port *port, int portnumber)
{
 int ctrl, loop = 0;
 int status;
 int fifosize;
 unsigned long flags;

 ctrl = UART_GET_CTRL(port);
 local_irq_save(flags);

 UART_PUT_CTRL(port, ctrl | UART_CTRL_TE);

 while (!UART_TX_READY(UART_GET_STATUS(port)))
  loop++;






 UART_PUT_CTRL(port, ctrl & ~(UART_CTRL_TE));

 fifosize = 1;
 UART_PUT_CHAR(port, 0);







 status = UART_GET_STATUS(port);
 while (((status >> 20) & 0x3F) == fifosize) {
  fifosize++;
  UART_PUT_CHAR(port, 0);
  status = UART_GET_STATUS(port);
 }

 fifosize--;

 UART_PUT_CTRL(port, ctrl);
 local_irq_restore(flags);

 if (fifosize == 0)
  fifosize = 1;

 return fifosize;
}
