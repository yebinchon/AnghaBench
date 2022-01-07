
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int hw_atomic_mutex; } ;


 int MT_WLAN_FUN_CTRL ;
 int MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL ;
 int MT_WLAN_FUN_CTRL_GPIO_OUT_EN ;
 int MT_WLAN_FUN_CTRL_WLAN_EN ;
 int MT_WLAN_FUN_CTRL_WLAN_RESET ;
 int MT_WLAN_FUN_CTRL_WLAN_RESET_RF ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_set_wlan_state (struct mt7601u_dev*,int,int) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void mt7601u_chip_onoff(struct mt7601u_dev *dev, bool enable, bool reset)
{
 u32 val;

 mutex_lock(&dev->hw_atomic_mutex);

 val = mt7601u_rr(dev, MT_WLAN_FUN_CTRL);

 if (reset) {
  val |= MT_WLAN_FUN_CTRL_GPIO_OUT_EN;
  val &= ~MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL;

  if (val & MT_WLAN_FUN_CTRL_WLAN_EN) {
   val |= (MT_WLAN_FUN_CTRL_WLAN_RESET |
    MT_WLAN_FUN_CTRL_WLAN_RESET_RF);
   mt7601u_wr(dev, MT_WLAN_FUN_CTRL, val);
   udelay(20);

   val &= ~(MT_WLAN_FUN_CTRL_WLAN_RESET |
     MT_WLAN_FUN_CTRL_WLAN_RESET_RF);
  }
 }

 mt7601u_wr(dev, MT_WLAN_FUN_CTRL, val);
 udelay(20);

 mt7601u_set_wlan_state(dev, val, enable);

 mutex_unlock(&dev->hw_atomic_mutex);
}
