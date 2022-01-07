
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mvebu_a3700_comphy_lane {int id; } ;


 int COMPHY_SIP_POWER_OFF ;
 int mvebu_a3700_comphy_smc (int ,int ,int ) ;
 struct mvebu_a3700_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mvebu_a3700_comphy_power_off(struct phy *phy)
{
 struct mvebu_a3700_comphy_lane *lane = phy_get_drvdata(phy);

 return mvebu_a3700_comphy_smc(COMPHY_SIP_POWER_OFF, lane->id, 0);
}
