
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;


 int DPHY_CM ;
 int DPHY_CN ;
 int DPHY_CO ;
 int phy_write (struct phy*,int ,int ) ;

__attribute__((used)) static int mixel_dphy_exit(struct phy *phy)
{
 phy_write(phy, 0, DPHY_CM);
 phy_write(phy, 0, DPHY_CN);
 phy_write(phy, 0, DPHY_CO);

 return 0;
}
