
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tb_port {TYPE_1__ config; } ;






 int tb_dp_port_is_enabled (struct tb_port*) ;
 int tb_pci_port_is_enabled (struct tb_port*) ;

bool tb_port_is_enabled(struct tb_port *port)
{
 switch (port->config.type) {
 case 128:
 case 129:
  return tb_pci_port_is_enabled(port);

 case 131:
 case 130:
  return tb_dp_port_is_enabled(port);

 default:
  return 0;
 }
}
