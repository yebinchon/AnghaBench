
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct via_pll_config {int dummy; } ;
struct TYPE_2__ {int (* set_secondary_pll ) (struct via_pll_config) ;int (* set_primary_pll ) (struct via_pll_config) ;} ;


 int IGA1 ;
 int IGA2 ;
 TYPE_1__ clock ;
 struct via_pll_config get_best_pll_config (int ) ;
 int stub1 (struct via_pll_config) ;
 int stub2 (struct via_pll_config) ;
 int via_write_misc_reg_mask (int,int) ;

void viafb_set_vclock(u32 clk, int set_iga)
{
 struct via_pll_config config = get_best_pll_config(clk);

 if (set_iga == IGA1)
  clock.set_primary_pll(config);
 if (set_iga == IGA2)
  clock.set_secondary_pll(config);


 via_write_misc_reg_mask(0x0C, 0x0C);
}
