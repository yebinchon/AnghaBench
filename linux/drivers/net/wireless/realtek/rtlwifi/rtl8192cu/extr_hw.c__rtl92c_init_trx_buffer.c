
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ IS_NORMAL_CHIP (int ) ;
 int PBP_128 ;
 scalar_t__ REG_PBP ;
 scalar_t__ REG_TDECTRL ;
 scalar_t__ REG_TRXFF_BNDY ;
 scalar_t__ REG_TXPKTBUF_BCNQ_BDNY ;
 scalar_t__ REG_TXPKTBUF_MGQ_BDNY ;
 scalar_t__ REG_TXPKTBUF_WMAC_LBK_BF_HD ;
 int RX_PAGE_SIZE_REG_VALUE ;
 int TX_PAGE_BOUNDARY ;
 int WMM_CHIP_A_TX_PAGE_BOUNDARY ;
 int WMM_CHIP_B_TX_PAGE_BOUNDARY ;
 int _PSRX (int ) ;
 int _PSTX (int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void _rtl92c_init_trx_buffer(struct ieee80211_hw *hw, bool wmm_enable)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 txpktbuf_bndy;
 u8 value8;

 if (!wmm_enable)
  txpktbuf_bndy = TX_PAGE_BOUNDARY;
 else
  txpktbuf_bndy = (IS_NORMAL_CHIP(rtlhal->version))
      ? WMM_CHIP_B_TX_PAGE_BOUNDARY
      : WMM_CHIP_A_TX_PAGE_BOUNDARY;
 rtl_write_byte(rtlpriv, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_TXPKTBUF_WMAC_LBK_BF_HD, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_TRXFF_BNDY, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_TDECTRL+1, txpktbuf_bndy);
 rtl_write_word(rtlpriv, (REG_TRXFF_BNDY + 2), 0x27FF);
 value8 = _PSRX(RX_PAGE_SIZE_REG_VALUE) | _PSTX(PBP_128);
 rtl_write_byte(rtlpriv, REG_PBP, value8);
}
