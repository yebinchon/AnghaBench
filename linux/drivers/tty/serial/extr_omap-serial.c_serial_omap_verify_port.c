
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct serial_struct {int dummy; } ;


 int EINVAL ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int
serial_omap_verify_port(struct uart_port *port, struct serial_struct *ser)
{

 dev_dbg(port->dev, "serial_omap_verify_port+\n");
 return -EINVAL;
}
