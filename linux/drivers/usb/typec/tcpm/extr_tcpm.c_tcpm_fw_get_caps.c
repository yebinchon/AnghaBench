
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int data; int type; int prefer_role; } ;
struct tcpm_port {scalar_t__ port_type; int operating_snk_mw; int self_powered; void* nr_snk_pdo; int snk_pdo; TYPE_1__ typec_caps; void* nr_src_pdo; int src_pdo; } ;
struct fwnode_handle {int dummy; } ;


 int EINVAL ;
 int PDO_MAX_OBJECTS ;
 scalar_t__ TYPEC_PORT_SNK ;
 scalar_t__ TYPEC_PORT_SRC ;
 int fwnode_property_count_u32 (struct fwnode_handle*,char*) ;
 int fwnode_property_read_bool (struct fwnode_handle*,char*) ;
 int fwnode_property_read_string (struct fwnode_handle*,char*,char const**) ;
 scalar_t__ fwnode_property_read_u32 (struct fwnode_handle*,char*,int*) ;
 int fwnode_property_read_u32_array (struct fwnode_handle*,char*,int ,void*) ;
 void* min (int,int ) ;
 scalar_t__ tcpm_validate_caps (struct tcpm_port*,int ,void*) ;
 int typec_find_port_data_role (char const*) ;
 int typec_find_port_power_role (char const*) ;
 int typec_find_power_role (char const*) ;

__attribute__((used)) static int tcpm_fw_get_caps(struct tcpm_port *port,
       struct fwnode_handle *fwnode)
{
 const char *cap_str;
 int ret;
 u32 mw;

 if (!fwnode)
  return -EINVAL;


 ret = fwnode_property_read_string(fwnode, "data-role", &cap_str);
 if (ret == 0) {
  ret = typec_find_port_data_role(cap_str);
  if (ret < 0)
   return ret;
  port->typec_caps.data = ret;
 }

 ret = fwnode_property_read_string(fwnode, "power-role", &cap_str);
 if (ret < 0)
  return ret;

 ret = typec_find_port_power_role(cap_str);
 if (ret < 0)
  return ret;
 port->typec_caps.type = ret;
 port->port_type = port->typec_caps.type;

 if (port->port_type == TYPEC_PORT_SNK)
  goto sink;


 ret = fwnode_property_count_u32(fwnode, "source-pdos");
 if (ret <= 0)
  return -EINVAL;

 port->nr_src_pdo = min(ret, PDO_MAX_OBJECTS);
 ret = fwnode_property_read_u32_array(fwnode, "source-pdos",
          port->src_pdo, port->nr_src_pdo);
 if ((ret < 0) || tcpm_validate_caps(port, port->src_pdo,
         port->nr_src_pdo))
  return -EINVAL;

 if (port->port_type == TYPEC_PORT_SRC)
  return 0;


 ret = fwnode_property_read_string(fwnode, "try-power-role", &cap_str);
 if (ret < 0)
  return ret;

 port->typec_caps.prefer_role = typec_find_power_role(cap_str);
 if (port->typec_caps.prefer_role < 0)
  return -EINVAL;
sink:

 ret = fwnode_property_count_u32(fwnode, "sink-pdos");
 if (ret <= 0)
  return -EINVAL;

 port->nr_snk_pdo = min(ret, PDO_MAX_OBJECTS);
 ret = fwnode_property_read_u32_array(fwnode, "sink-pdos",
          port->snk_pdo, port->nr_snk_pdo);
 if ((ret < 0) || tcpm_validate_caps(port, port->snk_pdo,
         port->nr_snk_pdo))
  return -EINVAL;

 if (fwnode_property_read_u32(fwnode, "op-sink-microwatt", &mw) < 0)
  return -EINVAL;
 port->operating_snk_mw = mw / 1000;

 port->self_powered = fwnode_property_read_bool(fwnode, "self-powered");

 return 0;
}
