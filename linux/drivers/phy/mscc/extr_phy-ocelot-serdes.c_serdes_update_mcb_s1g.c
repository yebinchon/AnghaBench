
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int HSIO_MCB_S1G_ADDR_CFG_SERDES1G_RD_ONE_SHOT ;
 int __serdes_write_mcb_s1g (struct regmap*,int ,int ) ;

__attribute__((used)) static int serdes_update_mcb_s1g(struct regmap *regmap, u8 macro)
{
 return __serdes_write_mcb_s1g(regmap, macro,
  HSIO_MCB_S1G_ADDR_CFG_SERDES1G_RD_ONE_SHOT);
}
