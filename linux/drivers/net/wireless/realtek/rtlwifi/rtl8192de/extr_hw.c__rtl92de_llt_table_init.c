
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_PBP ;
 scalar_t__ REG_RQPN ;
 int REG_RQPN_NPQ ;
 int REG_RX_DRVINFO_SZ ;
 int REG_TDECTRL ;
 scalar_t__ REG_TRXFF_BNDY ;
 int REG_TXPKTBUF_BCNQ_BDNY ;
 int REG_TXPKTBUF_MGQ_BDNY ;
 scalar_t__ SINGLEMAC_SINGLEPHY ;
 int _rtl92de_llt_write (struct ieee80211_hw*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_word (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static bool _rtl92de_llt_table_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 unsigned short i;
 u8 txpktbuf_bndy;
 u8 maxpage;
 bool status;
 u32 value32;
 u8 value8;

 if (rtlpriv->rtlhal.macphymode == SINGLEMAC_SINGLEPHY) {
  maxpage = 255;
  txpktbuf_bndy = 246;
  value8 = 0;
  value32 = 0x80bf0d29;
 } else {
  maxpage = 127;
  txpktbuf_bndy = 123;
  value8 = 0;
  value32 = 0x80750005;
 }




 rtl_write_byte(rtlpriv, REG_RQPN_NPQ, value8);
 rtl_write_dword(rtlpriv, REG_RQPN, value32);



 rtl_write_dword(rtlpriv, REG_TRXFF_BNDY,
   (rtl_read_word(rtlpriv, REG_TRXFF_BNDY + 2) << 16 |
   txpktbuf_bndy));



 rtl_write_byte(rtlpriv, REG_TDECTRL + 1, txpktbuf_bndy);



 rtl_write_byte(rtlpriv, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
 rtl_write_byte(rtlpriv, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);



 rtl_write_byte(rtlpriv, 0x45D, txpktbuf_bndy);





 rtl_write_byte(rtlpriv, REG_PBP, 0x11);


 rtl_write_byte(rtlpriv, REG_RX_DRVINFO_SZ, 0x4);


 for (i = 0; i < (txpktbuf_bndy - 1); i++) {
  status = _rtl92de_llt_write(hw, i, i + 1);
  if (1 != status)
   return status;
 }


 status = _rtl92de_llt_write(hw, (txpktbuf_bndy - 1), 0xFF);
 if (1 != status)
  return status;





 for (i = txpktbuf_bndy; i < maxpage; i++) {
  status = _rtl92de_llt_write(hw, i, (i + 1));
  if (1 != status)
   return status;
 }


 status = _rtl92de_llt_write(hw, maxpage, txpktbuf_bndy);
 if (1 != status)
  return status;

 return 1;
}
