
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_gen2_phy {struct rcar_gen2_channel* channel; } ;
struct rcar_gen2_channel {int selected_phy; TYPE_1__* drv; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct rcar_gen2_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int rcar_gen2_phy_exit(struct phy *p)
{
 struct rcar_gen2_phy *phy = phy_get_drvdata(p);
 struct rcar_gen2_channel *channel = phy->channel;

 clk_disable_unprepare(channel->drv->clk);

 channel->selected_phy = -1;

 return 0;
}
