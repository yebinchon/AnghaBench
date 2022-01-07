
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int HQSEL_BEQ ;
 int HQSEL_BKQ ;
 int HQSEL_HIQ ;
 int HQSEL_MGTQ ;
 int HQSEL_VIQ ;
 int HQSEL_VOQ ;
 scalar_t__ REG_TRXDMA_CTRL ;
 int TX_SELE_HQ ;
 int TX_SELE_LQ ;
 int WARN_ON (int) ;
 int pr_info (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void _rtl92cu_init_chipt_queue_priority(struct ieee80211_hw *hw,
            bool wmm_enable,
            u8 out_ep_num,
            u8 queue_sel)
{
 u8 hq_sele = 0;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 switch (out_ep_num) {
 case 2:
  if (!wmm_enable)
   hq_sele = HQSEL_VOQ | HQSEL_VIQ | HQSEL_MGTQ |
       HQSEL_HIQ;
  else
   hq_sele = HQSEL_VOQ | HQSEL_BEQ | HQSEL_MGTQ |
      HQSEL_HIQ;
  break;
 case 1:
  if (TX_SELE_LQ == queue_sel) {

   hq_sele = 0;
  } else if (TX_SELE_HQ == queue_sel) {

   hq_sele = HQSEL_VOQ | HQSEL_VIQ | HQSEL_BEQ |
       HQSEL_BKQ | HQSEL_MGTQ | HQSEL_HIQ;
  }
  break;
 default:
  WARN_ON(1);
  break;
 }
 rtl_write_byte(rtlpriv, (REG_TRXDMA_CTRL+1), hq_sele);
 pr_info("Tx queue select :0x%02x..\n", hq_sele);
}
