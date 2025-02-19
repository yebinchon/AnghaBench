
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int CHIP_A_PAGE_NUM_PUBQ ;
 int CHIP_B_PAGE_NUM_PUBQ ;
 int IS_NORMAL_CHIP (int ) ;
 int LD_RQPN ;
 int REG_RQPN ;
 int REG_RQPN_NPQ ;
 int TX_SELE_HQ ;
 int TX_SELE_LQ ;
 int TX_SELE_NQ ;
 int TX_TOTAL_PAGE_NUMBER ;
 int WMM_CHIP_A_PAGE_NUM_HPQ ;
 int WMM_CHIP_A_PAGE_NUM_LPQ ;
 int WMM_CHIP_A_PAGE_NUM_PUBQ ;
 int WMM_CHIP_B_PAGE_NUM_HPQ ;
 int WMM_CHIP_B_PAGE_NUM_LPQ ;
 int WMM_CHIP_B_PAGE_NUM_NPQ ;
 int WMM_CHIP_B_PAGE_NUM_PUBQ ;
 int _HPQ (int) ;
 int _LPQ (int) ;
 scalar_t__ _NPQ (int) ;
 int _PUBQ (int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92cu_init_queue_reserved_page(struct ieee80211_hw *hw,
           bool wmm_enable,
           u8 out_ep_num,
           u8 queue_sel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 bool ischipn = IS_NORMAL_CHIP(rtlhal->version);
 u32 outepnum = (u32)out_ep_num;
 u32 numhq = 0;
 u32 numlq = 0;
 u32 numnq = 0;
 u32 numpubq;
 u32 value32;
 u8 value8;
 u32 txqpagenum, txqpageunit, txqremaininpage;

 if (!wmm_enable) {
  numpubq = (ischipn) ? CHIP_B_PAGE_NUM_PUBQ :
     CHIP_A_PAGE_NUM_PUBQ;
  txqpagenum = TX_TOTAL_PAGE_NUMBER - numpubq;

  txqpageunit = txqpagenum / outepnum;
  txqremaininpage = txqpagenum % outepnum;
  if (queue_sel & TX_SELE_HQ)
   numhq = txqpageunit;
  if (queue_sel & TX_SELE_LQ)
   numlq = txqpageunit;


  if (outepnum > 1 && txqremaininpage)
   numhq += txqremaininpage;

  if (ischipn) {
   if (queue_sel & TX_SELE_NQ)
    numnq = txqpageunit;
   value8 = (u8)_NPQ(numnq);
   rtl_write_byte(rtlpriv, REG_RQPN_NPQ, value8);
  }
 } else {

  numpubq = ischipn ? WMM_CHIP_B_PAGE_NUM_PUBQ :
     WMM_CHIP_A_PAGE_NUM_PUBQ;
  if (queue_sel & TX_SELE_HQ) {
   numhq = ischipn ? WMM_CHIP_B_PAGE_NUM_HPQ :
    WMM_CHIP_A_PAGE_NUM_HPQ;
  }
  if (queue_sel & TX_SELE_LQ) {
   numlq = ischipn ? WMM_CHIP_B_PAGE_NUM_LPQ :
    WMM_CHIP_A_PAGE_NUM_LPQ;
  }

  if (ischipn) {
   if (queue_sel & TX_SELE_NQ)
    numnq = WMM_CHIP_B_PAGE_NUM_NPQ;
   value8 = (u8)_NPQ(numnq);
   rtl_write_byte(rtlpriv, REG_RQPN_NPQ, value8);
  }
 }

 value32 = _HPQ(numhq) | _LPQ(numlq) | _PUBQ(numpubq) | LD_RQPN;
 rtl_write_dword(rtlpriv, REG_RQPN, value32);
}
