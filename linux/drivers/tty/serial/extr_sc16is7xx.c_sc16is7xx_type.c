
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ type; int dev; } ;
struct sc16is7xx_port {TYPE_1__* devtype; } ;
struct TYPE_2__ {char const* name; } ;


 scalar_t__ PORT_SC16IS7XX ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;

__attribute__((used)) static const char *sc16is7xx_type(struct uart_port *port)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);

 return (port->type == PORT_SC16IS7XX) ? s->devtype->name : ((void*)0);
}
