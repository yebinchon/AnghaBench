
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mt76_reg_pair {scalar_t__ reg; int value; } ;
struct mt76x0_bbp_switch_item {int bw_band; struct mt76_reg_pair reg_pair; } ;
struct TYPE_3__ {int lna_gain; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct mt76x02_dev {TYPE_2__ cal; } ;


 int AGC ;
 int ARRAY_SIZE (struct mt76x0_bbp_switch_item*) ;
 int FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,int) ;
 scalar_t__ MT_BBP (int ,int) ;
 int MT_BBP_AGC_GAIN ;
 int mt76_wr (struct mt76x02_dev*,scalar_t__,int ) ;
 struct mt76x0_bbp_switch_item* mt76x0_bbp_switch_tab ;

__attribute__((used)) static void
mt76x0_phy_set_chan_bbp_params(struct mt76x02_dev *dev, u16 rf_bw_band)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mt76x0_bbp_switch_tab); i++) {
  const struct mt76x0_bbp_switch_item *item = &mt76x0_bbp_switch_tab[i];
  const struct mt76_reg_pair *pair = &item->reg_pair;

  if ((rf_bw_band & item->bw_band) != rf_bw_band)
   continue;

  if (pair->reg == MT_BBP(AGC, 8)) {
   u32 val = pair->value;
   u8 gain;

   gain = FIELD_GET(MT_BBP_AGC_GAIN, val);
   gain -= dev->cal.rx.lna_gain * 2;
   val &= ~MT_BBP_AGC_GAIN;
   val |= FIELD_PREP(MT_BBP_AGC_GAIN, gain);
   mt76_wr(dev, pair->reg, val);
  } else {
   mt76_wr(dev, pair->reg, pair->value);
  }
 }
}
