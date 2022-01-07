
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int TXX9_SIFLCR ;
 int TXX9_SIFLCR_TBRK ;
 int sio_mask (struct uart_txx9_port*,int ,int ) ;
 int sio_set (struct uart_txx9_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);
 if (break_state == -1)
  sio_set(up, TXX9_SIFLCR, TXX9_SIFLCR_TBRK);
 else
  sio_mask(up, TXX9_SIFLCR, TXX9_SIFLCR_TBRK);
 spin_unlock_irqrestore(&up->port.lock, flags);
}
