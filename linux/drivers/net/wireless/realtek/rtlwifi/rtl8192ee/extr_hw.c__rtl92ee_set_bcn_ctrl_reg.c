
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {scalar_t__ reg_bcn_ctrl_val; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_BCN_CTRL ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,scalar_t__) ;

__attribute__((used)) static void _rtl92ee_set_bcn_ctrl_reg(struct ieee80211_hw *hw,
          u8 set_bits, u8 clear_bits)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpci->reg_bcn_ctrl_val |= set_bits;
 rtlpci->reg_bcn_ctrl_val &= ~clear_bits;

 rtl_write_byte(rtlpriv, REG_BCN_CTRL, (u8)rtlpci->reg_bcn_ctrl_val);
}
