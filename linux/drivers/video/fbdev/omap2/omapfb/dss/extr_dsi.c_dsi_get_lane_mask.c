
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dsi_data {int num_lanes_supported; TYPE_1__* lanes; } ;
struct TYPE_2__ {scalar_t__ function; } ;


 scalar_t__ DSI_LANE_UNUSED ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static unsigned dsi_get_lane_mask(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 unsigned mask = 0;
 int i;

 for (i = 0; i < dsi->num_lanes_supported; ++i) {
  if (dsi->lanes[i].function != DSI_LANE_UNUSED)
   mask |= 1 << i;
 }

 return mask;
}
