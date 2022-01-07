
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_master_prop {int mclk_freq; int hw_disabled; } ;
struct sdw_bus {int link_id; int dev; struct sdw_master_prop prop; } ;
struct fwnode_handle {int dummy; } ;
typedef int name ;


 int EIO ;
 int SDW_INTEL_QUIRK_MASK_BUS_DISABLE ;
 int dev_err (int ,char*,char*) ;
 struct fwnode_handle* device_get_named_child_node (int ,char*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,int*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int sdw_master_read_intel_prop(struct sdw_bus *bus)
{
 struct sdw_master_prop *prop = &bus->prop;
 struct fwnode_handle *link;
 char name[32];
 u32 quirk_mask;


 snprintf(name, sizeof(name),
   "mipi-sdw-link-%d-subproperties", bus->link_id);

 link = device_get_named_child_node(bus->dev, name);
 if (!link) {
  dev_err(bus->dev, "Master node %s not found\n", name);
  return -EIO;
 }

 fwnode_property_read_u32(link,
     "intel-sdw-ip-clock",
     &prop->mclk_freq);

 fwnode_property_read_u32(link,
     "intel-quirk-mask",
     &quirk_mask);

 if (quirk_mask & SDW_INTEL_QUIRK_MASK_BUS_DISABLE)
  prop->hw_disabled = 1;

 return 0;
}
