
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int control_reg; } ;


 int readb (int ) ;

__attribute__((used)) static inline void zssync(struct uart_pmac_port *port)
{
 (void)readb(port->control_reg);
}
