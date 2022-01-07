
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* serial_out ) (TYPE_1__*,int,int) ;} ;
struct uart_8250_port {TYPE_1__ port; } ;


 int stub1 (TYPE_1__*,int,int) ;

__attribute__((used)) static inline void serial_out(struct uart_8250_port *up, int offset, int value)
{
 up->port.serial_out(&up->port, offset, value);
}
