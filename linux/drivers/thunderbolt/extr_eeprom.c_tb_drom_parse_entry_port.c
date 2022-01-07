
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_port_number; } ;
struct tb_switch {struct tb_port* ports; int dev; TYPE_1__ config; } ;
struct tb_port {TYPE_2__* sw; int * dual_link_port; int link_nr; scalar_t__ disabled; } ;
struct tb_drom_entry_port {size_t dual_link_port_nr; scalar_t__ has_dual_link_port; int link_nr; } ;
struct tb_drom_entry_header {size_t index; int len; scalar_t__ port_disabled; } ;
typedef enum tb_port_type { ____Placeholder_tb_port_type } tb_port_type ;
struct TYPE_4__ {int * ports; } ;


 int EIO ;
 int TB_CFG_PORT ;
 int TB_TYPE_PORT ;
 int dev_info_once (int *,char*) ;
 int tb_port_read (struct tb_port*,int*,int ,int,int) ;
 int tb_sw_warn (struct tb_switch*,char*,int,int) ;

__attribute__((used)) static int tb_drom_parse_entry_port(struct tb_switch *sw,
        struct tb_drom_entry_header *header)
{
 struct tb_port *port;
 int res;
 enum tb_port_type type;





 if (header->index > sw->config.max_port_number) {
  dev_info_once(&sw->dev, "ignoring unnecessary extra entries in DROM\n");
  return 0;
 }

 port = &sw->ports[header->index];
 port->disabled = header->port_disabled;
 if (port->disabled)
  return 0;

 res = tb_port_read(port, &type, TB_CFG_PORT, 2, 1);
 if (res)
  return res;
 type &= 0xffffff;

 if (type == TB_TYPE_PORT) {
  struct tb_drom_entry_port *entry = (void *) header;
  if (header->len != sizeof(*entry)) {
   tb_sw_warn(sw,
    "port entry has size %#x (expected %#zx)\n",
    header->len, sizeof(struct tb_drom_entry_port));
   return -EIO;
  }
  port->link_nr = entry->link_nr;
  if (entry->has_dual_link_port)
   port->dual_link_port =
    &port->sw->ports[entry->dual_link_port_nr];
 }
 return 0;
}
