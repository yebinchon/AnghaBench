
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t idx; int * desc; } ;
struct ieee80211_hw {int dummy; } ;


 int HW_DESC_OWN ;
 int rtl88ee_get_desc (struct ieee80211_hw*,size_t*,int,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;

bool rtl88ee_is_tx_desc_closed(struct ieee80211_hw *hw, u8 hw_queue, u16 index)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[hw_queue];
 u8 *entry = (u8 *)(&ring->desc[ring->idx]);
 u8 own = (u8)rtl88ee_get_desc(hw, entry, 1, HW_DESC_OWN);





 if (own)
  return 0;
 return 1;
}
