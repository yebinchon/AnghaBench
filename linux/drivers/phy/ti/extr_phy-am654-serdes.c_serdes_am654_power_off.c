
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int dummy; } ;
struct phy {int dummy; } ;


 struct serdes_am654* phy_get_drvdata (struct phy*) ;
 int serdes_am654_disable_pll (struct serdes_am654*) ;
 int serdes_am654_disable_txrx (struct serdes_am654*) ;

__attribute__((used)) static int serdes_am654_power_off(struct phy *x)
{
 struct serdes_am654 *phy = phy_get_drvdata(x);

 serdes_am654_disable_txrx(phy);
 serdes_am654_disable_pll(phy);

 return 0;
}
