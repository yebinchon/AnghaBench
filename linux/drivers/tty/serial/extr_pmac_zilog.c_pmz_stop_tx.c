
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int PMACZILOG_FLAG_TX_STOPPED ;
 TYPE_1__* to_pmz (struct uart_port*) ;

__attribute__((used)) static void pmz_stop_tx(struct uart_port *port)
{
 to_pmz(port)->flags |= PMACZILOG_FLAG_TX_STOPPED;
}
