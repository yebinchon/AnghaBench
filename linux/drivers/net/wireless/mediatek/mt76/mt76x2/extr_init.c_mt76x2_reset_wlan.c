
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int MT_WLAN_FUN_CTRL ;
 int MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL ;
 int MT_WLAN_FUN_CTRL_WLAN_EN ;
 int MT_WLAN_FUN_CTRL_WLAN_RESET_RF ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x2_set_wlan_state (struct mt76x02_dev*,int) ;
 int udelay (int) ;

void mt76x2_reset_wlan(struct mt76x02_dev *dev, bool enable)
{
 u32 val;

 if (!enable)
  goto out;

 val = mt76_rr(dev, MT_WLAN_FUN_CTRL);

 val &= ~MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL;

 if (val & MT_WLAN_FUN_CTRL_WLAN_EN) {
  val |= MT_WLAN_FUN_CTRL_WLAN_RESET_RF;
  mt76_wr(dev, MT_WLAN_FUN_CTRL, val);
  udelay(20);

  val &= ~MT_WLAN_FUN_CTRL_WLAN_RESET_RF;
 }

 mt76_wr(dev, MT_WLAN_FUN_CTRL, val);
 udelay(20);

out:
 mt76x2_set_wlan_state(dev, enable);
}
