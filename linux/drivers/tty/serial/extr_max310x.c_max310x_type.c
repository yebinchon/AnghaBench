
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ type; int dev; } ;
struct max310x_port {TYPE_1__* devtype; } ;
struct TYPE_2__ {char const* name; } ;


 scalar_t__ PORT_MAX310X ;
 struct max310x_port* dev_get_drvdata (int ) ;

__attribute__((used)) static const char *max310x_type(struct uart_port *port)
{
 struct max310x_port *s = dev_get_drvdata(port->dev);

 return (port->type == PORT_MAX310X) ? s->devtype->name : ((void*)0);
}
