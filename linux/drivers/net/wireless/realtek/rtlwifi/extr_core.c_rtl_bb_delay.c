
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int rtl_addr_delay (int) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int udelay (int) ;

void rtl_bb_delay(struct ieee80211_hw *hw, u32 addr, u32 data)
{
 if (addr >= 0xf9 && addr <= 0xfe) {
  rtl_addr_delay(addr);
 } else {
  rtl_set_bbreg(hw, addr, MASKDWORD, data);
  udelay(1);
 }
}
