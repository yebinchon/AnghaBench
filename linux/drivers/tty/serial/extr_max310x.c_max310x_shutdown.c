
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct max310x_port {TYPE_1__* devtype; } ;
struct TYPE_2__ {int (* power ) (struct uart_port*,int ) ;} ;


 int MAX310X_IRQEN_REG ;
 struct max310x_port* dev_get_drvdata (int ) ;
 int max310x_port_write (struct uart_port*,int ,int ) ;
 int stub1 (struct uart_port*,int ) ;

__attribute__((used)) static void max310x_shutdown(struct uart_port *port)
{
 struct max310x_port *s = dev_get_drvdata(port->dev);


 max310x_port_write(port, MAX310X_IRQEN_REG, 0);

 s->devtype->power(port, 0);
}
