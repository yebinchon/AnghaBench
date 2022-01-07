
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int hwsec_cam_bitmap; size_t** hwsec_cam_sta_addr; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;


 size_t BIT (int ) ;
 int ETH_ALEN ;
 size_t TOTAL_CAM_ENTRY ;
 scalar_t__ ether_addr_equal_unaligned (size_t*,size_t*) ;
 int memcpy (size_t*,size_t*,int ) ;
 int pr_err (char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u8 rtl_cam_get_free_entry(struct ieee80211_hw *hw, u8 *sta_addr)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 bitmap = (rtlpriv->sec.hwsec_cam_bitmap) >> 4;
 u8 entry_idx = 0;
 u8 i, *addr;

 if (((void*)0) == sta_addr) {
  pr_err("sta_addr is NULL.\n");
  return TOTAL_CAM_ENTRY;
 }

 for (i = 4; i < TOTAL_CAM_ENTRY; i++) {
  addr = rtlpriv->sec.hwsec_cam_sta_addr[i];
  if (ether_addr_equal_unaligned(addr, sta_addr))
   return i;
 }

 for (entry_idx = 4; entry_idx < TOTAL_CAM_ENTRY; entry_idx++) {
  if ((bitmap & BIT(0)) == 0) {
   pr_err("-----hwsec_cam_bitmap: 0x%x entry_idx=%d\n",
          rtlpriv->sec.hwsec_cam_bitmap, entry_idx);
   rtlpriv->sec.hwsec_cam_bitmap |= BIT(0) << entry_idx;
   memcpy(rtlpriv->sec.hwsec_cam_sta_addr[entry_idx],
          sta_addr, ETH_ALEN);
   return entry_idx;
  }
  bitmap = bitmap >> 1;
 }
 return TOTAL_CAM_ENTRY;
}
