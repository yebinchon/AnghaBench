
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int minor; } ;



__attribute__((used)) static inline int serial_index(struct uart_port *port)
{
 return port->minor - 64;
}
