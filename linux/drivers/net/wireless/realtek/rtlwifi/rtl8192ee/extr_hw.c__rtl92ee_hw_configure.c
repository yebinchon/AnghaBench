
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int reg_bcn_ctrl_val; } ;
struct ieee80211_hw {int dummy; } ;


 int RATE_ALL_CCK ;
 int RATE_ALL_OFDM_AG ;
 int REG_ACKTO ;
 int REG_AGGR_BREAK_TIME ;
 scalar_t__ REG_ARFR0 ;
 scalar_t__ REG_ARFR1 ;
 int REG_ATIMWND ;
 scalar_t__ REG_BAR_MODE_CTRL ;
 int REG_BCN_CTRL ;
 int REG_BCN_CTRL_1 ;
 int REG_BCN_MAX_ERR ;
 scalar_t__ REG_DARFRC ;
 scalar_t__ REG_FAST_EDCA_CTRL ;
 int REG_FWHW_TXQ_CTRL ;
 int REG_MAC_SPEC_SIFS ;
 scalar_t__ REG_MAR ;
 int REG_MAX_AGGR_NUM ;
 int REG_NAV_PROT_LEN ;
 int REG_PIFS ;
 int REG_PROT_MODE_CTRL ;
 scalar_t__ REG_RARFRC ;
 int REG_RETRY_LIMIT ;
 scalar_t__ REG_RRSR ;
 int REG_RX_PKT_LIMIT ;
 int REG_SIFS_CTX ;
 int REG_SIFS_TRX ;
 int REG_SLOT ;
 int REG_SPEC_SIFS ;
 int REG_TBTT_PROHIBIT ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92ee_hw_configure(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u32 reg_rrsr;

 reg_rrsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;

 rtl_write_dword(rtlpriv, REG_RRSR, reg_rrsr);


 rtl_write_dword(rtlpriv, REG_ARFR0, 0x00000010);
 rtl_write_dword(rtlpriv, REG_ARFR0 + 4, 0x3e0ff000);


 rtl_write_dword(rtlpriv, REG_ARFR1, 0x00000010);
 rtl_write_dword(rtlpriv, REG_ARFR1 + 4, 0x000ff000);


 rtl_write_byte(rtlpriv, REG_SLOT, 0x09);


 rtl_write_word(rtlpriv, REG_FWHW_TXQ_CTRL, 0x1F80);


 rtl_write_word(rtlpriv, REG_RETRY_LIMIT, 0x0707);


 rtl_write_dword(rtlpriv, REG_BAR_MODE_CTRL, 0x0201ffff);


 rtl_write_dword(rtlpriv, REG_DARFRC, 0x01000000);
 rtl_write_dword(rtlpriv, REG_DARFRC + 4, 0x07060504);
 rtl_write_dword(rtlpriv, REG_RARFRC, 0x01000000);
 rtl_write_dword(rtlpriv, REG_RARFRC + 4, 0x07060504);


 rtl_write_byte(rtlpriv, REG_ATIMWND, 0x2);
 rtl_write_byte(rtlpriv, REG_BCN_MAX_ERR, 0xff);

 rtlpci->reg_bcn_ctrl_val = 0x1d;
 rtl_write_byte(rtlpriv, REG_BCN_CTRL, rtlpci->reg_bcn_ctrl_val);






 rtl_write_byte(rtlpriv, REG_BCN_CTRL_1, 0);


 rtl_write_byte(rtlpriv, REG_TBTT_PROHIBIT + 1, 0xff);

 rtl_write_byte(rtlpriv, REG_PIFS, 0);
 rtl_write_byte(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);

 rtl_write_word(rtlpriv, REG_NAV_PROT_LEN, 0x0040);
 rtl_write_word(rtlpriv, REG_PROT_MODE_CTRL, 0x08ff);


 rtl_write_dword(rtlpriv, REG_FAST_EDCA_CTRL, 0x03086666);


 rtl_write_byte(rtlpriv, REG_ACKTO, 0x40);


 rtl_write_word(rtlpriv, REG_SPEC_SIFS, 0x100a);
 rtl_write_word(rtlpriv, REG_MAC_SPEC_SIFS, 0x100a);


 rtl_write_word(rtlpriv, REG_SIFS_CTX, 0x100a);


 rtl_write_word(rtlpriv, REG_SIFS_TRX, 0x100a);


 rtl_write_byte(rtlpriv, 0x4C7, 0x80);

 rtl_write_byte(rtlpriv, REG_RX_PKT_LIMIT, 0x20);

 rtl_write_word(rtlpriv, REG_MAX_AGGR_NUM, 0x1717);


 rtl_write_dword(rtlpriv, REG_MAR, 0xffffffff);
 rtl_write_dword(rtlpriv, REG_MAR + 4, 0xffffffff);
}
