
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct sdw_dpn_prop* sink_dpn_prop; int sink_ports; struct sdw_dpn_prop* src_dpn_prop; int source_ports; } ;
struct sdw_slave {TYPE_1__ prop; } ;
struct sdw_dpn_prop {unsigned int num; } ;
typedef enum sdw_data_direction { ____Placeholder_sdw_data_direction } sdw_data_direction ;


 int SDW_DATA_DIR_TX ;
 int hweight32 (int ) ;

struct sdw_dpn_prop *sdw_get_slave_dpn_prop(struct sdw_slave *slave,
         enum sdw_data_direction direction,
         unsigned int port_num)
{
 struct sdw_dpn_prop *dpn_prop;
 u8 num_ports;
 int i;

 if (direction == SDW_DATA_DIR_TX) {
  num_ports = hweight32(slave->prop.source_ports);
  dpn_prop = slave->prop.src_dpn_prop;
 } else {
  num_ports = hweight32(slave->prop.sink_ports);
  dpn_prop = slave->prop.sink_dpn_prop;
 }

 for (i = 0; i < num_ports; i++) {
  if (dpn_prop[i].num == port_num)
   return &dpn_prop[i];
 }

 return ((void*)0);
}
