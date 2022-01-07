
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct serdes_am654 {int pll_ok; int pll_enable; } ;


 int PLL_ENABLE_STATE ;
 int PLL_LOCK_TIME ;
 int regmap_field_read_poll_timeout (int ,int ,int ,int,int ) ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int serdes_am654_enable_pll(struct serdes_am654 *phy)
{
 int ret;
 u32 val;

 ret = regmap_field_write(phy->pll_enable, PLL_ENABLE_STATE);
 if (ret)
  return ret;

 return regmap_field_read_poll_timeout(phy->pll_ok, val, val, 1000,
           PLL_LOCK_TIME);
}
