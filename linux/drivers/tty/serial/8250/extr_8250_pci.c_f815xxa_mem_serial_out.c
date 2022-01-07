
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; struct f815xxa_data* private_data; } ;
struct f815xxa_data {int lock; } ;


 scalar_t__ UART_SCR ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void f815xxa_mem_serial_out(struct uart_port *p, int offset, int value)
{
 struct f815xxa_data *data = p->private_data;
 unsigned long flags;

 spin_lock_irqsave(&data->lock, flags);
 writeb(value, p->membase + offset);
 readb(p->membase + UART_SCR);
 spin_unlock_irqrestore(&data->lock, flags);
}
