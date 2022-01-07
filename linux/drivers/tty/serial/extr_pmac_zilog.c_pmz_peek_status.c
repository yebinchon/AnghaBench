
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; } ;
struct uart_pmac_port {TYPE_1__ port; } ;


 int R0 ;
 int read_zsreg (struct uart_pmac_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline u8 pmz_peek_status(struct uart_pmac_port *uap)
{
 unsigned long flags;
 u8 status;

 spin_lock_irqsave(&uap->port.lock, flags);
 status = read_zsreg(uap, R0);
 spin_unlock_irqrestore(&uap->port.lock, flags);

 return status;
}
