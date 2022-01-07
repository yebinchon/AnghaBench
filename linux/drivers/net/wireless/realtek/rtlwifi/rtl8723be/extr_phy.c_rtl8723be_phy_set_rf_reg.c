
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rf_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_RF ;
 int DBG_TRACE ;
 int RFREG_OFFSET_MASK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int,int) ;
 int rtl8723_phy_calculate_bit_shift (int) ;
 int rtl8723_phy_rf_serial_read (struct ieee80211_hw*,int,int) ;
 int rtl8723_phy_rf_serial_write (struct ieee80211_hw*,int,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtl8723be_phy_set_rf_reg(struct ieee80211_hw *hw, enum radio_path path,
         u32 regaddr, u32 bitmask, u32 data)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 original_value, bitshift;
 unsigned long flags;

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\n",
    regaddr, bitmask, data, path);

 spin_lock_irqsave(&rtlpriv->locks.rf_lock, flags);

 if (bitmask != RFREG_OFFSET_MASK) {
   original_value = rtl8723_phy_rf_serial_read(hw, path,
            regaddr);
   bitshift = rtl8723_phy_calculate_bit_shift(bitmask);
   data = ((original_value & (~bitmask)) |
    (data << bitshift));
  }

 rtl8723_phy_rf_serial_write(hw, path, regaddr, data);

 spin_unlock_irqrestore(&rtlpriv->locks.rf_lock, flags);

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\n",
    regaddr, bitmask, data, path);

}
