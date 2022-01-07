
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; int lock; scalar_t__ membase; } ;


 unsigned long LINFLEXD_LINIER_DRIE ;
 unsigned long LINFLEXD_LINIER_DTIE ;
 scalar_t__ LINIER ;
 int devm_free_irq (int ,int ,struct uart_port*) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void linflex_shutdown(struct uart_port *port)
{
 unsigned long ier;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);


 ier = readl(port->membase + LINIER);
 ier &= ~(LINFLEXD_LINIER_DRIE | LINFLEXD_LINIER_DTIE);
 writel(ier, port->membase + LINIER);

 spin_unlock_irqrestore(&port->lock, flags);

 devm_free_irq(port->dev, port->irq, port);
}
