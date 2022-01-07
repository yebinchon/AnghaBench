
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct TYPE_2__ {size_t** hwsec_cam_sta_addr; size_t hwsec_cam_bitmap; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;


 size_t BIT (int ) ;
 int COMP_SEC ;
 int DBG_DMESG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,size_t) ;
 size_t TOTAL_CAM_ENTRY ;
 int eth_zero_addr (size_t*) ;
 scalar_t__ ether_addr_equal_unaligned (size_t*,size_t*) ;
 scalar_t__ is_zero_ether_addr (size_t*) ;
 int pr_err (char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_cam_del_entry(struct ieee80211_hw *hw, u8 *sta_addr)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 bitmap;
 u8 i, *addr;

 if (((void*)0) == sta_addr) {
  pr_err("sta_addr is NULL.\n");
  return;
 }

 if (is_zero_ether_addr(sta_addr)) {
  pr_err("sta_addr is %pM\n", sta_addr);
  return;
 }

 for (i = 4; i < TOTAL_CAM_ENTRY; i++) {
  addr = rtlpriv->sec.hwsec_cam_sta_addr[i];
  bitmap = (rtlpriv->sec.hwsec_cam_bitmap) >> i;
  if (((bitmap & BIT(0)) == BIT(0)) &&
      (ether_addr_equal_unaligned(addr, sta_addr))) {

   eth_zero_addr(rtlpriv->sec.hwsec_cam_sta_addr[i]);
   rtlpriv->sec.hwsec_cam_bitmap &= ~(BIT(0) << i);
   RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
     "&&&&&&&&&del entry %d\n", i);
  }
 }
 return;
}
