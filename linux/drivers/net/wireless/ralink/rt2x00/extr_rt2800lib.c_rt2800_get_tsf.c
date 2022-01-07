
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int TSF_TIMER_DW0 ;
 int TSF_TIMER_DW0_LOW_WORD ;
 int TSF_TIMER_DW1 ;
 int TSF_TIMER_DW1_HIGH_WORD ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field32 (int ,int ) ;

u64 rt2800_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 u64 tsf;
 u32 reg;

 reg = rt2800_register_read(rt2x00dev, TSF_TIMER_DW1);
 tsf = (u64) rt2x00_get_field32(reg, TSF_TIMER_DW1_HIGH_WORD) << 32;
 reg = rt2800_register_read(rt2x00dev, TSF_TIMER_DW0);
 tsf |= rt2x00_get_field32(reg, TSF_TIMER_DW0_LOW_WORD);

 return tsf;
}
