
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_pad {int dev; int * lanes; int provider; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_lanes; } ;


 int device_unregister (int *) ;
 int of_phy_provider_unregister (int ) ;
 int tegra_xusb_lane_destroy (int ) ;

void tegra_xusb_pad_unregister(struct tegra_xusb_pad *pad)
{
 unsigned int i = pad->soc->num_lanes;

 of_phy_provider_unregister(pad->provider);

 while (i--)
  tegra_xusb_lane_destroy(pad->lanes[i]);

 device_unregister(&pad->dev);
}
