
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int rtl_addr_delay (int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int,int,int) ;
 int udelay (int) ;

void rtl_rfreg_delay(struct ieee80211_hw *hw, enum radio_path rfpath, u32 addr,
       u32 mask, u32 data)
{
 if (addr >= 0xf9 && addr <= 0xfe) {
  rtl_addr_delay(addr);
 } else {
  rtl_set_rfreg(hw, rfpath, addr, mask, data);
  udelay(1);
 }
}
