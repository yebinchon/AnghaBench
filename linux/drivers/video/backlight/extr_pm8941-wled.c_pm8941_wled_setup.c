
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int ovp; int i_boost_limit; int switch_freq; int num_strings; int i_limit; scalar_t__ cabc_en; scalar_t__ ext_gen; scalar_t__ cs_out_en; } ;
struct pm8941_wled {TYPE_1__ cfg; int regmap; scalar_t__ addr; } ;


 int BIT (int) ;
 scalar_t__ PM8941_WLED_REG_BOOST ;
 int PM8941_WLED_REG_BOOST_MASK ;
 scalar_t__ PM8941_WLED_REG_FREQ ;
 int PM8941_WLED_REG_FREQ_MASK ;
 scalar_t__ PM8941_WLED_REG_OVP ;
 int PM8941_WLED_REG_OVP_MASK ;
 scalar_t__ PM8941_WLED_REG_SINK ;
 int PM8941_WLED_REG_SINK_MASK ;
 int PM8941_WLED_REG_SINK_SHFT ;
 scalar_t__ PM8941_WLED_REG_STR_CABC_BASE ;
 int PM8941_WLED_REG_STR_CABC_EN ;
 int PM8941_WLED_REG_STR_CABC_MASK ;
 int PM8941_WLED_REG_STR_MOD_EN ;
 scalar_t__ PM8941_WLED_REG_STR_MOD_EN_BASE ;
 int PM8941_WLED_REG_STR_MOD_MASK ;
 scalar_t__ PM8941_WLED_REG_STR_MOD_SRC_BASE ;
 int PM8941_WLED_REG_STR_MOD_SRC_EXT ;
 int PM8941_WLED_REG_STR_MOD_SRC_MASK ;
 int PM8941_WLED_REG_STR_OFFSET ;
 scalar_t__ PM8941_WLED_REG_STR_SCALE_BASE ;
 int PM8941_WLED_REG_STR_SCALE_MASK ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;

__attribute__((used)) static int pm8941_wled_setup(struct pm8941_wled *wled)
{
 int rc;
 int i;

 rc = regmap_update_bits(wled->regmap,
   wled->addr + PM8941_WLED_REG_OVP,
   PM8941_WLED_REG_OVP_MASK, wled->cfg.ovp);
 if (rc)
  return rc;

 rc = regmap_update_bits(wled->regmap,
   wled->addr + PM8941_WLED_REG_BOOST,
   PM8941_WLED_REG_BOOST_MASK, wled->cfg.i_boost_limit);
 if (rc)
  return rc;

 rc = regmap_update_bits(wled->regmap,
   wled->addr + PM8941_WLED_REG_FREQ,
   PM8941_WLED_REG_FREQ_MASK, wled->cfg.switch_freq);
 if (rc)
  return rc;

 if (wled->cfg.cs_out_en) {
  u8 all = (BIT(wled->cfg.num_strings) - 1)
    << PM8941_WLED_REG_SINK_SHFT;

  rc = regmap_update_bits(wled->regmap,
    wled->addr + PM8941_WLED_REG_SINK,
    PM8941_WLED_REG_SINK_MASK, all);
  if (rc)
   return rc;
 }

 for (i = 0; i < wled->cfg.num_strings; ++i) {
  u16 addr = wled->addr + PM8941_WLED_REG_STR_OFFSET * i;

  rc = regmap_update_bits(wled->regmap,
    addr + PM8941_WLED_REG_STR_MOD_EN_BASE,
    PM8941_WLED_REG_STR_MOD_MASK,
    PM8941_WLED_REG_STR_MOD_EN);
  if (rc)
   return rc;

  if (wled->cfg.ext_gen) {
   rc = regmap_update_bits(wled->regmap,
     addr + PM8941_WLED_REG_STR_MOD_SRC_BASE,
     PM8941_WLED_REG_STR_MOD_SRC_MASK,
     PM8941_WLED_REG_STR_MOD_SRC_EXT);
   if (rc)
    return rc;
  }

  rc = regmap_update_bits(wled->regmap,
    addr + PM8941_WLED_REG_STR_SCALE_BASE,
    PM8941_WLED_REG_STR_SCALE_MASK,
    wled->cfg.i_limit);
  if (rc)
   return rc;

  rc = regmap_update_bits(wled->regmap,
    addr + PM8941_WLED_REG_STR_CABC_BASE,
    PM8941_WLED_REG_STR_CABC_MASK,
    wled->cfg.cabc_en ?
     PM8941_WLED_REG_STR_CABC_EN : 0);
  if (rc)
   return rc;
 }

 return 0;
}
