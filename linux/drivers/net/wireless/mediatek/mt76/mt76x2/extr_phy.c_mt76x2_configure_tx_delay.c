
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int MT_TX_SW_CFG0 ;
 int MT_TX_SW_CFG1 ;
 int MT_XIFS_TIME_CFG ;
 int MT_XIFS_TIME_CFG_OFDM_SIFS ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 scalar_t__ mt76x02_ext_pa_enabled (struct mt76x02_dev*,int) ;

void mt76x2_configure_tx_delay(struct mt76x02_dev *dev,
          enum nl80211_band band, u8 bw)
{
 u32 cfg0, cfg1;

 if (mt76x02_ext_pa_enabled(dev, band)) {
  cfg0 = bw ? 0x000b0c01 : 0x00101101;
  cfg1 = 0x00011414;
 } else {
  cfg0 = bw ? 0x000b0b01 : 0x00101001;
  cfg1 = 0x00021414;
 }
 mt76_wr(dev, MT_TX_SW_CFG0, cfg0);
 mt76_wr(dev, MT_TX_SW_CFG1, cfg1);

 mt76_rmw_field(dev, MT_XIFS_TIME_CFG, MT_XIFS_TIME_CFG_OFDM_SIFS, 15);
}
