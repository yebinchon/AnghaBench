
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct rx_desc_92c {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int GET_RX_DESC_OWN (struct rx_desc_92c*) ;
 int GET_RX_DESC_PKT_LEN (struct rx_desc_92c*) ;
 int GET_TX_DESC_OWN (int*) ;
 int GET_TX_DESC_TX_BUFFER_ADDRESS (int*) ;



 int WARN_ONCE (int,char*,int) ;

u64 rtl92de_get_desc(struct ieee80211_hw *hw,
       u8 *p_desc, bool istx, u8 desc_name)
{
 u32 ret = 0;

 if (istx) {
  switch (desc_name) {
  case 130:
   ret = GET_TX_DESC_OWN(p_desc);
   break;
  case 128:
   ret = GET_TX_DESC_TX_BUFFER_ADDRESS(p_desc);
   break;
  default:
   WARN_ONCE(1, "rtl8192de: ERR txdesc :%d not processed\n",
      desc_name);
   break;
  }
 } else {
  struct rx_desc_92c *pdesc = (struct rx_desc_92c *)p_desc;
  switch (desc_name) {
  case 130:
   ret = GET_RX_DESC_OWN(pdesc);
   break;
  case 129:
   ret = GET_RX_DESC_PKT_LEN(pdesc);
   break;
  default:
   WARN_ONCE(1, "rtl8192de: ERR rxdesc :%d not processed\n",
      desc_name);
   break;
  }
 }
 return ret;
}
