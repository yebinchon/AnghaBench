
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int l1_master_cdn_o; int cmu_master_cdn_o; int config_version; } ;
struct phy {int dummy; } ;


 int VERSION ;
 struct serdes_am654* phy_get_drvdata (struct phy*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int serdes_am654_init(struct phy *x)
{
 struct serdes_am654 *phy = phy_get_drvdata(x);
 int ret;

 ret = regmap_field_write(phy->config_version, VERSION);
 if (ret)
  return ret;

 ret = regmap_field_write(phy->cmu_master_cdn_o, 0x1);
 if (ret)
  return ret;

 ret = regmap_field_write(phy->l1_master_cdn_o, 0x1);
 if (ret)
  return ret;

 return 0;
}
