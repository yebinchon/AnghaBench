
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct cdns_sierra_inst {int lnk_rst; } ;


 struct cdns_sierra_inst* phy_get_drvdata (struct phy*) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int cdns_sierra_phy_on(struct phy *gphy)
{
 struct cdns_sierra_inst *ins = phy_get_drvdata(gphy);


 return reset_control_deassert(ins->lnk_rst);
}
