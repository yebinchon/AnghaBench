
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct pic32_sport {int irq_rx; int irq_tx; int irq_fault; } ;


 int free_irq (int ,struct uart_port*) ;
 int pic32_disable_clock (struct pic32_sport*) ;
 int pic32_uart_dsbl_and_mask (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static void pic32_uart_shutdown(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 unsigned long flags;


 spin_lock_irqsave(&port->lock, flags);
 pic32_uart_dsbl_and_mask(port);
 spin_unlock_irqrestore(&port->lock, flags);
 pic32_disable_clock(sport);


 free_irq(sport->irq_fault, port);
 free_irq(sport->irq_tx, port);
 free_irq(sport->irq_rx, port);
}
