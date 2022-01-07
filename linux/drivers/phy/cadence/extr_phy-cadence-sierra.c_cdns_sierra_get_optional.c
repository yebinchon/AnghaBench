
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cdns_sierra_inst {int phy_type; int num_lanes; int mlane; } ;


 int EINVAL ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int cdns_sierra_get_optional(struct cdns_sierra_inst *inst,
        struct device_node *child)
{
 if (of_property_read_u32(child, "reg", &inst->mlane))
  return -EINVAL;

 if (of_property_read_u32(child, "cdns,num-lanes", &inst->num_lanes))
  return -EINVAL;

 if (of_property_read_u32(child, "cdns,phy-type", &inst->phy_type))
  return -EINVAL;

 return 0;
}
