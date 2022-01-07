
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; scalar_t__ irq; } ;


 unsigned int PORT_UNKNOWN ;
 unsigned int PORT_VR41XX_DSIU ;
 unsigned int PORT_VR41XX_SIU ;

__attribute__((used)) static inline unsigned int siu_check_type(struct uart_port *port)
{
 if (port->line == 0)
  return PORT_VR41XX_SIU;
 if (port->line == 1 && port->irq)
  return PORT_VR41XX_DSIU;

 return PORT_UNKNOWN;
}
