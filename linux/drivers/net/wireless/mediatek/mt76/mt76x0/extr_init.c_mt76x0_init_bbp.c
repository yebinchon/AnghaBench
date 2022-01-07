
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_reg_pair {int value; int reg; } ;
struct mt76x0_bbp_switch_item {int bw_band; struct mt76_reg_pair reg_pair; } ;
struct mt76x02_dev {int dummy; } ;


 int ARRAY_SIZE (struct mt76x0_bbp_switch_item*) ;
 int RANDOM_WRITE (struct mt76x02_dev*,int ) ;
 int RF_BW_20 ;
 int RF_G_BAND ;
 int mt76_wr (struct mt76x02_dev*,int ,int ) ;
 int mt76x0_bbp_init_tab ;
 struct mt76x0_bbp_switch_item* mt76x0_bbp_switch_tab ;
 int mt76x0_dcoc_tab ;
 int mt76x0_phy_wait_bbp_ready (struct mt76x02_dev*) ;

__attribute__((used)) static int mt76x0_init_bbp(struct mt76x02_dev *dev)
{
 int ret, i;

 ret = mt76x0_phy_wait_bbp_ready(dev);
 if (ret)
  return ret;

 RANDOM_WRITE(dev, mt76x0_bbp_init_tab);

 for (i = 0; i < ARRAY_SIZE(mt76x0_bbp_switch_tab); i++) {
  const struct mt76x0_bbp_switch_item *item = &mt76x0_bbp_switch_tab[i];
  const struct mt76_reg_pair *pair = &item->reg_pair;

  if (((RF_G_BAND | RF_BW_20) & item->bw_band) == (RF_G_BAND | RF_BW_20))
   mt76_wr(dev, pair->reg, pair->value);
 }

 RANDOM_WRITE(dev, mt76x0_dcoc_tab);

 return 0;
}
