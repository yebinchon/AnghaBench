
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int MT_RF (int,int ) ;
 int MT_TX0_RF_GAIN_CORR ;
 int MT_TX_ALC_VGA3 ;


 int RF_RANDOM_WRITE (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x0_rf_2g_channel_0_tab ;
 int mt76x0_rf_5g_channel_0_tab ;
 int mt76x0_rf_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void
mt76x0_phy_set_band(struct mt76x02_dev *dev, enum nl80211_band band)
{
 switch (band) {
 case 129:
  RF_RANDOM_WRITE(dev, mt76x0_rf_2g_channel_0_tab);

  mt76x0_rf_wr(dev, MT_RF(5, 0), 0x45);
  mt76x0_rf_wr(dev, MT_RF(6, 0), 0x44);

  mt76_wr(dev, MT_TX_ALC_VGA3, 0x00050007);
  mt76_wr(dev, MT_TX0_RF_GAIN_CORR, 0x003E0002);
  break;
 case 128:
  RF_RANDOM_WRITE(dev, mt76x0_rf_5g_channel_0_tab);

  mt76x0_rf_wr(dev, MT_RF(5, 0), 0x44);
  mt76x0_rf_wr(dev, MT_RF(6, 0), 0x45);

  mt76_wr(dev, MT_TX_ALC_VGA3, 0x00000005);
  mt76_wr(dev, MT_TX0_RF_GAIN_CORR, 0x01010102);
  break;
 default:
  break;
 }
}
