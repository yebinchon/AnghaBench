
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
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int,...) ;
 int _rtl8821ae_phy_calculate_bit_shift (int) ;
 int _rtl8821ae_phy_rf_serial_read (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 rtl8821ae_phy_query_rf_reg(struct ieee80211_hw *hw,
          enum radio_path rfpath, u32 regaddr,
          u32 bitmask)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 original_value, readback_value, bitshift;
 unsigned long flags;

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), rfpath(%#x), bitmask(%#x)\n",
   regaddr, rfpath, bitmask);

 spin_lock_irqsave(&rtlpriv->locks.rf_lock, flags);

 original_value = _rtl8821ae_phy_rf_serial_read(hw, rfpath, regaddr);
 bitshift = _rtl8821ae_phy_calculate_bit_shift(bitmask);
 readback_value = (original_value & bitmask) >> bitshift;

 spin_unlock_irqrestore(&rtlpriv->locks.rf_lock, flags);

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\n",
   regaddr, rfpath, bitmask, original_value);

 return readback_value;
}
