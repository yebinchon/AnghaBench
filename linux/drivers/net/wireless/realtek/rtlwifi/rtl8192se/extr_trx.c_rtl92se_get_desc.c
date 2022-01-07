
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int GET_RX_STATUS_DESC_BUFF_ADDR (int*) ;
 int GET_RX_STATUS_DESC_OWN (int*) ;
 int GET_RX_STATUS_DESC_PKT_LEN (int*) ;
 int GET_TX_DESC_OWN (int*) ;
 int GET_TX_DESC_TX_BUFFER_ADDRESS (int*) ;




 int WARN_ONCE (int,char*,int) ;

u64 rtl92se_get_desc(struct ieee80211_hw *hw,
       u8 *desc, bool istx, u8 desc_name)
{
 u32 ret = 0;

 if (istx) {
  switch (desc_name) {
  case 131:
   ret = GET_TX_DESC_OWN(desc);
   break;
  case 128:
   ret = GET_TX_DESC_TX_BUFFER_ADDRESS(desc);
   break;
  default:
   WARN_ONCE(1, "rtl8192se: ERR txdesc :%d not processed\n",
      desc_name);
   break;
  }
 } else {
  switch (desc_name) {
  case 131:
   ret = GET_RX_STATUS_DESC_OWN(desc);
   break;
  case 129:
   ret = GET_RX_STATUS_DESC_PKT_LEN(desc);
   break;
  case 130:
   ret = GET_RX_STATUS_DESC_BUFF_ADDR(desc);
   break;
  default:
   WARN_ONCE(1, "rtl8192se: ERR rxdesc :%d not processed\n",
      desc_name);
   break;
  }
 }
 return ret;
}
