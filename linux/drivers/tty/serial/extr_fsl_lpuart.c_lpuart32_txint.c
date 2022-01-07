
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct lpuart_port {TYPE_1__ port; } ;


 int lpuart32_transmit_buffer (struct lpuart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lpuart32_txint(struct lpuart_port *sport)
{
 unsigned long flags;

 spin_lock_irqsave(&sport->port.lock, flags);
 lpuart32_transmit_buffer(sport);
 spin_unlock_irqrestore(&sport->port.lock, flags);
}
