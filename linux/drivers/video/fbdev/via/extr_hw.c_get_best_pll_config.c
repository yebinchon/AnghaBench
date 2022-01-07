
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via_pll_config {int dummy; } ;
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;


 int ARRAY_SIZE (int ) ;
 int cle266_pll_limits ;
 int cx700_pll_limits ;
 struct via_pll_config get_pll_config (int ,int ,int) ;
 int k800_pll_limits ;
 TYPE_2__* viaparinfo ;
 int vx855_pll_limits ;

__attribute__((used)) static struct via_pll_config get_best_pll_config(int clk)
{
 struct via_pll_config config;

 switch (viaparinfo->chip_info->gfx_chip_name) {
 case 140:
 case 136:
  config = get_pll_config(cle266_pll_limits,
   ARRAY_SIZE(cle266_pll_limits), clk);
  break;
 case 135:
 case 131:
 case 139:
  config = get_pll_config(k800_pll_limits,
   ARRAY_SIZE(k800_pll_limits), clk);
  break;
 case 137:
 case 138:
 case 134:
 case 133:
 case 132:
 case 130:
  config = get_pll_config(cx700_pll_limits,
   ARRAY_SIZE(cx700_pll_limits), clk);
  break;
 case 129:
 case 128:
  config = get_pll_config(vx855_pll_limits,
   ARRAY_SIZE(vx855_pll_limits), clk);
  break;
 }

 return config;
}
