
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int INFRA_TOPAXI_PROTECTEN ;
 int INFRA_TOPAXI_PROTECTEN_SET ;
 int INFRA_TOPAXI_PROTECTSTA1 ;
 int MTK_POLL_DELAY_US ;
 int MTK_POLL_TIMEOUT ;
 int regmap_read_poll_timeout (struct regmap*,int ,int,int,int ,int ) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
  bool reg_update)
{
 u32 val;
 int ret;

 if (reg_update)
  regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
    mask);
 else
  regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);

 ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
           val, (val & mask) == mask,
           MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);

 return ret;
}
