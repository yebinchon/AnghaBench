
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int por_en; } ;
struct phy {int dummy; } ;


 int mdelay (int) ;
 struct serdes_am654* phy_get_drvdata (struct phy*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int serdes_am654_reset(struct phy *x)
{
 struct serdes_am654 *phy = phy_get_drvdata(x);
 int ret;

 ret = regmap_field_write(phy->por_en, 0x1);
 if (ret)
  return ret;

 mdelay(1);

 ret = regmap_field_write(phy->por_en, 0x0);
 if (ret)
  return ret;

 return 0;
}
