
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;






 int WARN_ONCE (int,char*,int) ;
 int get_rx_desc_buff_addr (int *) ;
 int get_rx_desc_own (int *) ;
 int get_rx_desc_pkt_len (int *) ;
 int get_tx_desc_own (int *) ;
 int get_tx_desc_tx_buffer_address (int *) ;

u64 rtl92ce_get_desc(struct ieee80211_hw *hw, u8 *p_desc8,
       bool istx, u8 desc_name)
{
 u32 ret = 0;
 __le32 *p_desc = (__le32 *)p_desc8;

 if (istx) {
  switch (desc_name) {
  case 131:
   ret = get_tx_desc_own(p_desc);
   break;
  case 128:
   ret = get_tx_desc_tx_buffer_address(p_desc);
   break;
  default:
   WARN_ONCE(1, "rtl8192ce: ERR txdesc :%d not processed\n",
      desc_name);
   break;
  }
 } else {
  switch (desc_name) {
  case 131:
   ret = get_rx_desc_own(p_desc);
   break;
  case 129:
   ret = get_rx_desc_pkt_len(p_desc);
   break;
  case 130:
   ret = get_rx_desc_buff_addr(p_desc);
   break;
  default:
   WARN_ONCE(1, "rtl8192ce: ERR rxdesc :%d not processed\n",
      desc_name);
   break;
  }
 }
 return ret;
}
