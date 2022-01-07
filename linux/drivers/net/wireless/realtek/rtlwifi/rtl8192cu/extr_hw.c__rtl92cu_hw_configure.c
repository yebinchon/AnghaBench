
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_usb {int reg_bcn_ctrl_val; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_BCN_CTRL ;
 int REG_HWSEQ_CTRL ;
 int REG_LDOHCI12_CTRL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void _rtl92cu_hw_configure(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));


 rtl_write_byte(rtlpriv, REG_LDOHCI12_CTRL, 0x0f);
 rtl_write_byte(rtlpriv, 0x15, 0xe9);


 rtl_write_byte(rtlpriv, REG_HWSEQ_CTRL, 0xFF);

 rtl_write_byte(rtlpriv, 0xfe40, 0xe0);
 rtl_write_byte(rtlpriv, 0xfe41, 0x8d);
 rtl_write_byte(rtlpriv, 0xfe42, 0x80);
 rtlusb->reg_bcn_ctrl_val = 0x18;
 rtl_write_byte(rtlpriv, REG_BCN_CTRL, (u8)rtlusb->reg_bcn_ctrl_val);
}
