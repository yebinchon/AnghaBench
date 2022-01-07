
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct omap_dsi_pin_config {int num_pins; int* pins; } ;
struct dsi_lane_config {int function; size_t polarity; } ;
struct dsi_data {int num_lanes_supported; int num_lanes_used; int lanes; } ;
typedef enum dsi_lane_function { ____Placeholder_dsi_lane_function } dsi_lane_function ;







 int DSI_LANE_UNUSED ;
 int DSI_MAX_NR_LANES ;
 int EINVAL ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int memcpy (int ,struct dsi_lane_config*,int) ;

__attribute__((used)) static int dsi_configure_pins(struct omap_dss_device *dssdev,
  const struct omap_dsi_pin_config *pin_cfg)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int num_pins;
 const int *pins;
 struct dsi_lane_config lanes[DSI_MAX_NR_LANES];
 int num_lanes;
 int i;

 static const enum dsi_lane_function functions[] = {
  132,
  131,
  130,
  129,
  128,
 };

 num_pins = pin_cfg->num_pins;
 pins = pin_cfg->pins;

 if (num_pins < 4 || num_pins > dsi->num_lanes_supported * 2
   || num_pins % 2 != 0)
  return -EINVAL;

 for (i = 0; i < DSI_MAX_NR_LANES; ++i)
  lanes[i].function = DSI_LANE_UNUSED;

 num_lanes = 0;

 for (i = 0; i < num_pins; i += 2) {
  u8 lane, pol;
  int dx, dy;

  dx = pins[i];
  dy = pins[i + 1];

  if (dx < 0 || dx >= dsi->num_lanes_supported * 2)
   return -EINVAL;

  if (dy < 0 || dy >= dsi->num_lanes_supported * 2)
   return -EINVAL;

  if (dx & 1) {
   if (dy != dx - 1)
    return -EINVAL;
   pol = 1;
  } else {
   if (dy != dx + 1)
    return -EINVAL;
   pol = 0;
  }

  lane = dx / 2;

  lanes[lane].function = functions[i / 2];
  lanes[lane].polarity = pol;
  num_lanes++;
 }

 memcpy(dsi->lanes, lanes, sizeof(dsi->lanes));
 dsi->num_lanes_used = num_lanes;

 return 0;
}
