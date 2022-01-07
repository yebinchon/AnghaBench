
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atlas7_pmx {int dummy; } ;
struct atlas7_pad_config {scalar_t__ type; } ;


 scalar_t__ PAD_T_AD ;
 int __atlas7_pmx_pin_ad_sel (struct atlas7_pmx*,struct atlas7_pad_config*,int ,int) ;

__attribute__((used)) static int __atlas7_pmx_pin_digital_enable(struct atlas7_pmx *pmx,
   struct atlas7_pad_config *conf, u32 bank)
{

 if (conf->type != PAD_T_AD)
  return 0;

 return __atlas7_pmx_pin_ad_sel(pmx, conf, bank, 1);
}
