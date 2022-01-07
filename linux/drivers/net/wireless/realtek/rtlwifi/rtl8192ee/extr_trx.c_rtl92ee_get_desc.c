
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int dma64; } ;






 int WARN_ONCE (int,char*,int) ;
 int get_rx_desc_buff_addr (int *) ;
 int get_rx_desc_own (int *) ;
 int get_rx_desc_pkt_len (int *) ;
 int get_tx_desc_own (int *) ;
 int get_txbuffer_desc_addr_high (int *,int,int) ;
 int get_txbuffer_desc_addr_low (int *,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u64 rtl92ee_get_desc(struct ieee80211_hw *hw,
       u8 *pdesc8, bool istx, u8 desc_name)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u64 ret = 0;
 bool dma64 = rtlpriv->cfg->mod_params->dma64;
 __le32 *pdesc = (__le32 *)pdesc8;

 if (istx) {
  switch (desc_name) {
  case 131:
   ret = get_tx_desc_own(pdesc);
   break;
  case 128:
   ret = get_txbuffer_desc_addr_low(pdesc, 1);
   ret |= (u64)get_txbuffer_desc_addr_high(pdesc, 1,
        dma64) << 32;
   break;
  default:
   WARN_ONCE(1,
      "rtl8192ee: ERR txdesc :%d not processed\n",
      desc_name);
   break;
  }
 } else {
  switch (desc_name) {
  case 131:
   ret = get_rx_desc_own(pdesc);
   break;
  case 129:
   ret = get_rx_desc_pkt_len(pdesc);
   break;
  case 130:
   ret = get_rx_desc_buff_addr(pdesc);
   break;
  default:
   WARN_ONCE(1,
      "rtl8192ee: ERR rxdesc :%d not processed\n",
      desc_name);
   break;
  }
 }
 return ret;
}
