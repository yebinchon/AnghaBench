
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_master_prop {scalar_t__ max_clk_freq; int num_clk_freq; scalar_t__* clk_freq; int num_clk_gears; scalar_t__* clk_gears; scalar_t__ default_frame_rate; scalar_t__ default_row; scalar_t__ default_col; scalar_t__ err_threshold; scalar_t__ dynamic_frame; int clk_stop_modes; int revision; } ;
struct sdw_bus {int link_id; int dev; struct sdw_master_prop prop; } ;
struct fwnode_handle {int dummy; } ;
typedef int name ;


 int BIT (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SDW_CLK_STOP_MODE0 ;
 int SDW_CLK_STOP_MODE1 ;
 int dev_err (int ,char*,char*) ;
 struct fwnode_handle* device_get_named_child_node (int ,char*) ;
 int device_property_read_u32 (int ,char*,int *) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int fwnode_property_count_u32 (struct fwnode_handle*,char*) ;
 scalar_t__ fwnode_property_read_bool (struct fwnode_handle*,char*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,scalar_t__*) ;
 int fwnode_property_read_u32_array (struct fwnode_handle*,char*,scalar_t__*,int) ;
 int snprintf (char*,int,char*,int) ;

int sdw_master_read_prop(struct sdw_bus *bus)
{
 struct sdw_master_prop *prop = &bus->prop;
 struct fwnode_handle *link;
 char name[32];
 int nval, i;

 device_property_read_u32(bus->dev,
     "mipi-sdw-sw-interface-revision",
     &prop->revision);


 snprintf(name, sizeof(name),
   "mipi-sdw-link-%d-subproperties", bus->link_id);

 link = device_get_named_child_node(bus->dev, name);
 if (!link) {
  dev_err(bus->dev, "Master node %s not found\n", name);
  return -EIO;
 }

 if (fwnode_property_read_bool(link,
          "mipi-sdw-clock-stop-mode0-supported"))
  prop->clk_stop_modes |= BIT(SDW_CLK_STOP_MODE0);

 if (fwnode_property_read_bool(link,
          "mipi-sdw-clock-stop-mode1-supported"))
  prop->clk_stop_modes |= BIT(SDW_CLK_STOP_MODE1);

 fwnode_property_read_u32(link,
     "mipi-sdw-max-clock-frequency",
     &prop->max_clk_freq);

 nval = fwnode_property_count_u32(link, "mipi-sdw-clock-frequencies-supported");
 if (nval > 0) {
  prop->num_clk_freq = nval;
  prop->clk_freq = devm_kcalloc(bus->dev, prop->num_clk_freq,
           sizeof(*prop->clk_freq),
           GFP_KERNEL);
  if (!prop->clk_freq)
   return -ENOMEM;

  fwnode_property_read_u32_array(link,
    "mipi-sdw-clock-frequencies-supported",
    prop->clk_freq, prop->num_clk_freq);
 }





 if (!prop->max_clk_freq && prop->clk_freq) {
  prop->max_clk_freq = prop->clk_freq[0];
  for (i = 1; i < prop->num_clk_freq; i++) {
   if (prop->clk_freq[i] > prop->max_clk_freq)
    prop->max_clk_freq = prop->clk_freq[i];
  }
 }

 nval = fwnode_property_count_u32(link, "mipi-sdw-supported-clock-gears");
 if (nval > 0) {
  prop->num_clk_gears = nval;
  prop->clk_gears = devm_kcalloc(bus->dev, prop->num_clk_gears,
            sizeof(*prop->clk_gears),
            GFP_KERNEL);
  if (!prop->clk_gears)
   return -ENOMEM;

  fwnode_property_read_u32_array(link,
            "mipi-sdw-supported-clock-gears",
            prop->clk_gears,
            prop->num_clk_gears);
 }

 fwnode_property_read_u32(link, "mipi-sdw-default-frame-rate",
     &prop->default_frame_rate);

 fwnode_property_read_u32(link, "mipi-sdw-default-frame-row-size",
     &prop->default_row);

 fwnode_property_read_u32(link, "mipi-sdw-default-frame-col-size",
     &prop->default_col);

 prop->dynamic_frame = fwnode_property_read_bool(link,
   "mipi-sdw-dynamic-frame-shape");

 fwnode_property_read_u32(link, "mipi-sdw-command-error-threshold",
     &prop->err_threshold);

 return 0;
}
