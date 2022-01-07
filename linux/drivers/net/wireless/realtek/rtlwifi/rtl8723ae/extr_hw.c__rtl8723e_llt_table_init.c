
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int REG_CR ;
 int REG_PBP ;
 int REG_RQPN ;
 int REG_RQPN_NPQ ;
 int REG_RX_DRVINFO_SZ ;
 int REG_TDECTRL ;
 int REG_TRXFF_BNDY ;
 int REG_TXPKTBUF_BCNQ_BDNY ;
 int REG_TXPKTBUF_MGQ_BDNY ;
 int _rtl8723e_llt_write (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int,int) ;

__attribute__((used)) static bool _rtl8723e_llt_table_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 unsigned short i;
 u8 txpktbuf_bndy;
 u8 maxpage;
 bool status;
 u8 ubyte;
 rtl_write_byte(rtlpriv, REG_CR, 0x8B);
 rtl_write_dword(rtlpriv, REG_TRXFF_BNDY, (0x27FF0000 | txpktbuf_bndy));
 rtl_write_byte(rtlpriv, REG_TDECTRL + 1, txpktbuf_bndy);

 rtl_write_byte(rtlpriv, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);

 rtl_write_byte(rtlpriv, 0x45D, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_PBP, 0x11);
 rtl_write_byte(rtlpriv, REG_RX_DRVINFO_SZ, 0x4);

 for (i = 0; i < (txpktbuf_bndy - 1); i++) {
  status = _rtl8723e_llt_write(hw, i, i + 1);
  if (1 != status)
   return status;
 }

 status = _rtl8723e_llt_write(hw, (txpktbuf_bndy - 1), 0xFF);
 if (1 != status)
  return status;

 for (i = txpktbuf_bndy; i < maxpage; i++) {
  status = _rtl8723e_llt_write(hw, i, (i + 1));
  if (1 != status)
   return status;
 }

 status = _rtl8723e_llt_write(hw, maxpage, txpktbuf_bndy);
 if (1 != status)
  return status;

 rtl_write_byte(rtlpriv, REG_CR, 0xff);
 ubyte = rtl_read_byte(rtlpriv, REG_RQPN + 3);
 rtl_write_byte(rtlpriv, REG_RQPN + 3, ubyte | BIT(7));

 return 1;
}
