
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;


 int DPHY_PD_DPHY ;
 int DPHY_PD_PLL ;
 int PWR_OFF ;
 int phy_write (struct phy*,int ,int ) ;

__attribute__((used)) static int mixel_dphy_init(struct phy *phy)
{
 phy_write(phy, PWR_OFF, DPHY_PD_PLL);
 phy_write(phy, PWR_OFF, DPHY_PD_DPHY);

 return 0;
}
