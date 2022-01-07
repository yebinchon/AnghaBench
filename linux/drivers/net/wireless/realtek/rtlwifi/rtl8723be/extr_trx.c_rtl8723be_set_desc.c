
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;
 int WARN_ONCE (int,char*,int) ;
 int set_rx_desc_buff_addr (int *,int ) ;
 int set_rx_desc_eor (int *,int) ;
 int set_rx_desc_own (int *,int) ;
 int set_rx_desc_pkt_len (int *,int ) ;
 int set_tx_desc_next_desc_address (int *,int ) ;
 int set_tx_desc_own (int *,int) ;

void rtl8723be_set_desc(struct ieee80211_hw *hw, u8 *pdesc8,
   bool istx, u8 desc_name, u8 *val)
{
 __le32 *pdesc = (__le32 *)pdesc8;

 if (istx) {
  switch (desc_name) {
  case 133:
   set_tx_desc_own(pdesc, 1);
   break;
  case 128:
   set_tx_desc_next_desc_address(pdesc, *(u32 *)val);
   break;
  default:
   WARN_ONCE(1, "rtl8723be: ERR txdesc :%d not processed\n",
      desc_name);
   break;
  }
 } else {
  switch (desc_name) {
  case 130:
   set_rx_desc_own(pdesc, 1);
   break;
  case 132:
   set_rx_desc_buff_addr(pdesc, *(u32 *)val);
   break;
  case 129:
   set_rx_desc_pkt_len(pdesc, *(u32 *)val);
   break;
  case 131:
   set_rx_desc_eor(pdesc, 1);
   break;
  default:
   WARN_ONCE(1, "rtl8723be: ERR rxdesc :%d not process\n",
      desc_name);
   break;
  }
 }
}
