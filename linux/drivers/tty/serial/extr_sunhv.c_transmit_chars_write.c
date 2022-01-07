
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long tx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct circ_buf {unsigned long tail; int head; scalar_t__ buf; } ;


 unsigned long CIRC_CNT_TO_END (int ,unsigned long,int) ;
 unsigned long HV_EOK ;
 int UART_XMIT_SIZE ;
 unsigned long __pa (scalar_t__) ;
 unsigned long sun4v_con_write (unsigned long,unsigned long,unsigned long*) ;
 int uart_circ_empty (struct circ_buf*) ;

__attribute__((used)) static void transmit_chars_write(struct uart_port *port, struct circ_buf *xmit)
{
 while (!uart_circ_empty(xmit)) {
  unsigned long ra = __pa(xmit->buf + xmit->tail);
  unsigned long len, status, sent;

  len = CIRC_CNT_TO_END(xmit->head, xmit->tail,
          UART_XMIT_SIZE);
  status = sun4v_con_write(ra, len, &sent);
  if (status != HV_EOK)
   break;
  xmit->tail = (xmit->tail + sent) & (UART_XMIT_SIZE - 1);
  port->icount.tx += sent;
 }
}
