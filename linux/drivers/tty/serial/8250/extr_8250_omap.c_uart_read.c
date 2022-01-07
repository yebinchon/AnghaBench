
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regshift; scalar_t__ membase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 uart_read(struct uart_8250_port *up, u32 reg)
{
 return readl(up->port.membase + (reg << up->port.regshift));
}
