
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct a38x_comphy_lane {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int COMPHY_STAT1 ;
 int COMPHY_STAT1_PLL_RDY_RX ;
 int COMPHY_STAT1_PLL_RDY_TX ;
 int EINVAL ;
 unsigned int GEN_SGMII_1_25GBPS ;
 unsigned int GEN_SGMII_3_125GBPS ;



 int PHY_MODE_ETHERNET ;
 int a38x_comphy_poll (struct a38x_comphy_lane*,int ,int,int) ;
 int a38x_comphy_set_speed (struct a38x_comphy_lane*,unsigned int,unsigned int) ;
 struct a38x_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int a38x_comphy_set_mode(struct phy *phy, enum phy_mode mode, int sub)
{
 struct a38x_comphy_lane *lane = phy_get_drvdata(phy);
 unsigned int gen;

 if (mode != PHY_MODE_ETHERNET)
  return -EINVAL;

 switch (sub) {
 case 128:
 case 130:
  gen = GEN_SGMII_1_25GBPS;
  break;

 case 129:
  gen = GEN_SGMII_3_125GBPS;
  break;

 default:
  return -EINVAL;
 }

 a38x_comphy_set_speed(lane, gen, gen);

 return a38x_comphy_poll(lane, COMPHY_STAT1,
    COMPHY_STAT1_PLL_RDY_TX |
    COMPHY_STAT1_PLL_RDY_RX,
    COMPHY_STAT1_PLL_RDY_TX |
    COMPHY_STAT1_PLL_RDY_RX);
}
