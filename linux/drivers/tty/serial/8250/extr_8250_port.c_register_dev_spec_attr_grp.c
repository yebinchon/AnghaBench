
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t type; int * attr_group; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial8250_config {scalar_t__* rxtrig_bytes; } ;


 int serial8250_dev_attr_group ;
 struct serial8250_config* uart_config ;

__attribute__((used)) static void register_dev_spec_attr_grp(struct uart_8250_port *up)
{
 const struct serial8250_config *conf_type = &uart_config[up->port.type];

 if (conf_type->rxtrig_bytes[0])
  up->port.attr_group = &serial8250_dev_attr_group;
}
