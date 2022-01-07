
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_port_runtime {int port_node; } ;
struct sdw_port_config {int dummy; } ;
struct sdw_master_runtime {int port_list; } ;
struct sdw_bus {int dev; } ;


 int ENOMEM ;
 int list_add_tail (int *,int *) ;
 struct sdw_port_runtime* sdw_port_alloc (int ,struct sdw_port_config*,int) ;

__attribute__((used)) static int sdw_master_port_config(struct sdw_bus *bus,
      struct sdw_master_runtime *m_rt,
      struct sdw_port_config *port_config,
      unsigned int num_ports)
{
 struct sdw_port_runtime *p_rt;
 int i;


 for (i = 0; i < num_ports; i++) {
  p_rt = sdw_port_alloc(bus->dev, port_config, i);
  if (!p_rt)
   return -ENOMEM;






  list_add_tail(&p_rt->port_node, &m_rt->port_list);
 }

 return 0;
}
