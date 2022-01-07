
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
 int SET_RX_STATUS_DESC_EOR (int*,int) ;
 int SET_RX_STATUS_DESC_OWN (int*,int) ;
 int SET_RX_STATUS_DESC_PKT_LEN (int*,int ) ;
 int SET_RX_STATUS__DESC_BUFF_ADDR (int*,int ) ;
 int SET_TX_DESC_NEXT_DESC_ADDRESS (int*,int ) ;
 int SET_TX_DESC_OWN (int*,int) ;
 int WARN_ONCE (int,char*,int) ;
 int wmb () ;

void rtl92se_set_desc(struct ieee80211_hw *hw, u8 *pdesc, bool istx,
        u8 desc_name, u8 *val)
{
 if (istx) {
  switch (desc_name) {
  case 133:
   wmb();
   SET_TX_DESC_OWN(pdesc, 1);
   break;
  case 128:
   SET_TX_DESC_NEXT_DESC_ADDRESS(pdesc, *(u32 *) val);
   break;
  default:
   WARN_ONCE(1, "rtl8192se: ERR txdesc :%d not processed\n",
      desc_name);
   break;
  }
 } else {
  switch (desc_name) {
  case 130:
   wmb();
   SET_RX_STATUS_DESC_OWN(pdesc, 1);
   break;
  case 132:
   SET_RX_STATUS__DESC_BUFF_ADDR(pdesc, *(u32 *) val);
   break;
  case 129:
   SET_RX_STATUS_DESC_PKT_LEN(pdesc, *(u32 *) val);
   break;
  case 131:
   SET_RX_STATUS_DESC_EOR(pdesc, 1);
   break;
  default:
   WARN_ONCE(1, "rtl8192se: ERR rxdesc :%d not processed\n",
      desc_name);
   break;
  }
 }
}
