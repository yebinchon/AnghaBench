
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;
struct men_z135_port {int lock; struct uart_port port; } ;


 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void men_z135_reg_clr(struct men_z135_port *uart,
    u32 addr, u32 val)
{
 struct uart_port *port = &uart->port;
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&uart->lock, flags);

 reg = ioread32(port->membase + addr);
 reg &= ~val;
 iowrite32(reg, port->membase + addr);

 spin_unlock_irqrestore(&uart->lock, flags);
}
