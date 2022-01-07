
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_6__ {TYPE_2__* statStg; } ;
struct TYPE_5__ {TYPE_1__* xmit; } ;
struct TYPE_4__ {int flags; } ;


 TYPE_3__* ICOM_PORT ;
 int SA_FLAGS_READY_TO_XMIT ;
 int TIOCSER_TEMT ;
 int cpu_to_le16 (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int icom_tx_empty(struct uart_port *port)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 if (cpu_to_le16(ICOM_PORT->statStg->xmit[0].flags) &
     SA_FLAGS_READY_TO_XMIT)
  ret = TIOCSER_TEMT;
 else
  ret = 0;

 spin_unlock_irqrestore(&port->lock, flags);
 return ret;
}
