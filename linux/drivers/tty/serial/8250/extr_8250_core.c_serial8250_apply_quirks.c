
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int UPQ_NO_TXEN_TEST ;
 scalar_t__ skip_txen_test ;

__attribute__((used)) static inline void serial8250_apply_quirks(struct uart_8250_port *up)
{
 up->port.quirks |= skip_txen_test ? UPQ_NO_TXEN_TEST : 0;
}
