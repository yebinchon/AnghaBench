
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct cdns_sierra_inst {int lnk_rst; } ;


 struct cdns_sierra_inst* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int cdns_sierra_phy_off(struct phy *gphy)
{
 struct cdns_sierra_inst *ins = phy_get_drvdata(gphy);

 return reset_control_assert(ins->lnk_rst);
}
