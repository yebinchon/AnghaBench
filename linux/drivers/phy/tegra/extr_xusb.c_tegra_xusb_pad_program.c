
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_pad {scalar_t__* lanes; TYPE_1__* soc; } ;
struct tegra_xusb_lane {int dummy; } ;
struct TYPE_2__ {unsigned int num_lanes; } ;


 struct tegra_xusb_lane* phy_get_drvdata (scalar_t__) ;
 int tegra_xusb_lane_program (struct tegra_xusb_lane*) ;

__attribute__((used)) static void tegra_xusb_pad_program(struct tegra_xusb_pad *pad)
{
 unsigned int i;

 for (i = 0; i < pad->soc->num_lanes; i++) {
  struct tegra_xusb_lane *lane;

  if (pad->lanes[i]) {
   lane = phy_get_drvdata(pad->lanes[i]);
   tegra_xusb_lane_program(lane);
  }
 }
}
