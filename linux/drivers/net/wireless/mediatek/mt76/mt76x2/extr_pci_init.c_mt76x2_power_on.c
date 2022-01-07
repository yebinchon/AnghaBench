
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int BIT (int) ;
 int MT_WLAN_MTC_CTRL ;
 int MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP ;
 int MT_WLAN_MTC_CTRL_PWR_ACK ;
 int MT_WLAN_MTC_CTRL_PWR_ACK_S ;
 int MT_WLAN_MTC_CTRL_STATE_UP ;
 int mt76_clear (struct mt76x02_dev*,int,int) ;
 int mt76_poll (struct mt76x02_dev*,int,int,int,int) ;
 int mt76_set (struct mt76x02_dev*,int,int) ;
 int mt76x2_power_on_rf (struct mt76x02_dev*,int) ;
 int udelay (int) ;

__attribute__((used)) static void
mt76x2_power_on(struct mt76x02_dev *dev)
{
 u32 val;


 mt76_set(dev, MT_WLAN_MTC_CTRL, MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP);

 val = MT_WLAN_MTC_CTRL_STATE_UP |
       MT_WLAN_MTC_CTRL_PWR_ACK |
       MT_WLAN_MTC_CTRL_PWR_ACK_S;

 mt76_poll(dev, MT_WLAN_MTC_CTRL, val, val, 1000);

 mt76_clear(dev, MT_WLAN_MTC_CTRL, 0x7f << 16);
 udelay(10);

 mt76_clear(dev, MT_WLAN_MTC_CTRL, 0xf << 24);
 udelay(10);

 mt76_set(dev, MT_WLAN_MTC_CTRL, 0xf << 24);
 mt76_clear(dev, MT_WLAN_MTC_CTRL, 0xfff);


 mt76_clear(dev, 0x11204, BIT(3));


 mt76_set(dev, 0x10080, BIT(0));


 mt76_clear(dev, 0x10064, BIT(18));

 mt76x2_power_on_rf(dev, 0);
 mt76x2_power_on_rf(dev, 1);
}
