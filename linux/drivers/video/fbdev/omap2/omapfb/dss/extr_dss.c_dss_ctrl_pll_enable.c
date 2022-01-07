
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum dss_pll_id { ____Placeholder_dss_pll_id } dss_pll_id ;
struct TYPE_2__ {int syscon_pll_ctrl_offset; int syscon_pll_ctrl; } ;


 int DSSERR (char*,int) ;



 TYPE_1__ dss ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

void dss_ctrl_pll_enable(enum dss_pll_id pll_id, bool enable)
{
 unsigned shift;
 unsigned val;

 if (!dss.syscon_pll_ctrl)
  return;

 val = !enable;

 switch (pll_id) {
 case 129:
  shift = 0;
  break;
 case 128:
  shift = 1;
  break;
 case 130:
  shift = 2;
  break;
 default:
  DSSERR("illegal DSS PLL ID %d\n", pll_id);
  return;
 }

 regmap_update_bits(dss.syscon_pll_ctrl, dss.syscon_pll_ctrl_offset,
  1 << shift, val << shift);
}
