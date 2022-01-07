
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {unsigned long scscr; } ;


 unsigned long SCSCR_REIE ;
 unsigned long SCSCR_RIE ;
 TYPE_2__* to_sci_port (struct uart_port*) ;

__attribute__((used)) static inline unsigned long port_rx_irq_mask(struct uart_port *port)
{







 return SCSCR_RIE | (to_sci_port(port)->cfg->scscr & SCSCR_REIE);
}
