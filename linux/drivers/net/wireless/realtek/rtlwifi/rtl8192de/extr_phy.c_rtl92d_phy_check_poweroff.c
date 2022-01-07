
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ macphymode; scalar_t__ interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int MAC0_ON ;
 int MAC1_ON ;
 int REG_MAC0 ;
 int REG_MAC1 ;
 int REG_POWER_OFF_IN_PROCESS ;
 scalar_t__ SINGLEMAC_SINGLEPHY ;
 int globalmutex_power ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rtl92d_phy_check_poweroff(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 u1btmp;
 unsigned long flags;

 if (rtlhal->macphymode == SINGLEMAC_SINGLEPHY) {
  u1btmp = rtl_read_byte(rtlpriv, REG_MAC0);
  rtl_write_byte(rtlpriv, REG_MAC0, u1btmp & (~MAC0_ON));
  return 1;
 }
 spin_lock_irqsave(&globalmutex_power, flags);
 if (rtlhal->interfaceindex == 0) {
  u1btmp = rtl_read_byte(rtlpriv, REG_MAC0);
  rtl_write_byte(rtlpriv, REG_MAC0, u1btmp & (~MAC0_ON));
  u1btmp = rtl_read_byte(rtlpriv, REG_MAC1);
  u1btmp &= MAC1_ON;
 } else {
  u1btmp = rtl_read_byte(rtlpriv, REG_MAC1);
  rtl_write_byte(rtlpriv, REG_MAC1, u1btmp & (~MAC1_ON));
  u1btmp = rtl_read_byte(rtlpriv, REG_MAC0);
  u1btmp &= MAC0_ON;
 }
 if (u1btmp) {
  spin_unlock_irqrestore(&globalmutex_power, flags);
  return 0;
 }
 u1btmp = rtl_read_byte(rtlpriv, REG_POWER_OFF_IN_PROCESS);
 u1btmp |= BIT(7);
 rtl_write_byte(rtlpriv, REG_POWER_OFF_IN_PROCESS, u1btmp);
 spin_unlock_irqrestore(&globalmutex_power, flags);
 return 1;
}
