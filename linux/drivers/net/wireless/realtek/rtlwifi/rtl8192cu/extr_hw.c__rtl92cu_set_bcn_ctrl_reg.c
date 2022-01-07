
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_usb {scalar_t__ reg_bcn_ctrl_val; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_BCN_CTRL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,scalar_t__) ;

__attribute__((used)) static void _rtl92cu_set_bcn_ctrl_reg(struct ieee80211_hw *hw,
          u8 set_bits, u8 clear_bits)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 rtlusb->reg_bcn_ctrl_val |= set_bits;
 rtlusb->reg_bcn_ctrl_val &= ~clear_bits;
 rtl_write_byte(rtlpriv, REG_BCN_CTRL, (u8)rtlusb->reg_bcn_ctrl_val);
}
