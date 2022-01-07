
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_sunsab_port {int tec_timeout; TYPE_2__* regs; } ;
struct TYPE_3__ {int star; } ;
struct TYPE_4__ {TYPE_1__ r; } ;


 int SAB82532_STAR_TEC ;
 int readb (int *) ;
 int udelay (int) ;

__attribute__((used)) static __inline__ void sunsab_tec_wait(struct uart_sunsab_port *up)
{
 int timeout = up->tec_timeout;

 while ((readb(&up->regs->r.star) & SAB82532_STAR_TEC) && --timeout)
  udelay(1);
}
