
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_TRXDMA_CTRL ;
 int _TXDMA_BEQ_MAP (int) ;
 int _TXDMA_BKQ_MAP (int) ;
 int _TXDMA_HIQ_MAP (int) ;
 int _TXDMA_MGQ_MAP (int) ;
 int _TXDMA_VIQ_MAP (int) ;
 int _TXDMA_VOQ_MAP (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_word (struct rtl_priv*,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92c_init_chipn_reg_priority(struct ieee80211_hw *hw, u16 beq,
         u16 bkq, u16 viq, u16 voq,
         u16 mgtq, u16 hiq)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u16 value16 = (rtl_read_word(rtlpriv, REG_TRXDMA_CTRL) & 0x7);

 value16 |= _TXDMA_BEQ_MAP(beq) | _TXDMA_BKQ_MAP(bkq) |
     _TXDMA_VIQ_MAP(viq) | _TXDMA_VOQ_MAP(voq) |
     _TXDMA_MGQ_MAP(mgtq) | _TXDMA_HIQ_MAP(hiq);
 rtl_write_word(rtlpriv, REG_TRXDMA_CTRL, value16);
}
