
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_pll_id { ____Placeholder_dss_pll_id } dss_pll_id ;
struct TYPE_2__ {int syscon_pll_ctrl_offset; int syscon_pll_ctrl; } ;


 int DSSERR (char*) ;






 TYPE_1__ dss ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

void dss_ctrl_pll_set_control_mux(enum dss_pll_id pll_id,
 enum omap_channel channel)
{
 unsigned shift, val;

 if (!dss.syscon_pll_ctrl)
  return;

 switch (channel) {
 case 130:
  shift = 3;

  switch (pll_id) {
  case 132:
   val = 0; break;
  case 133:
   val = 1; break;
  default:
   DSSERR("error in PLL mux config for LCD\n");
   return;
  }

  break;
 case 129:
  shift = 5;

  switch (pll_id) {
  case 132:
   val = 0; break;
  case 131:
   val = 1; break;
  case 133:
   val = 2; break;
  default:
   DSSERR("error in PLL mux config for LCD2\n");
   return;
  }

  break;
 case 128:
  shift = 7;

  switch (pll_id) {
  case 132:
   val = 1; break;
  case 131:
   val = 0; break;
  case 133:
   val = 2; break;
  default:
   DSSERR("error in PLL mux config for LCD3\n");
   return;
  }

  break;
 default:
  DSSERR("error in PLL mux config\n");
  return;
 }

 regmap_update_bits(dss.syscon_pll_ctrl, dss.syscon_pll_ctrl_offset,
  0x3 << shift, val << shift);
}
