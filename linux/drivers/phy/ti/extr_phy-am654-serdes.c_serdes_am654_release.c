
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int busy; int control; int type; } ;
struct phy {int dummy; } ;


 int PHY_NONE ;
 int mux_control_deselect (int ) ;
 struct serdes_am654* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static void serdes_am654_release(struct phy *x)
{
 struct serdes_am654 *phy = phy_get_drvdata(x);

 phy->type = PHY_NONE;
 phy->busy = 0;
 mux_control_deselect(phy->control);
}
