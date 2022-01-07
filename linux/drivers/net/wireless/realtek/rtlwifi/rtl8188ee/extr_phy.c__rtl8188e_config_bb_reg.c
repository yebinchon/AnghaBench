
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int mdelay (int) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl8188e_config_bb_reg(struct ieee80211_hw *hw,
        u32 addr, u32 data)
{
 if (addr == 0xfe) {
  mdelay(50);
 } else if (addr == 0xfd) {
  mdelay(5);
 } else if (addr == 0xfc) {
  mdelay(1);
 } else if (addr == 0xfb) {
  udelay(50);
 } else if (addr == 0xfa) {
  udelay(5);
 } else if (addr == 0xf9) {
  udelay(1);
 } else {
  rtl_set_bbreg(hw, addr, MASKDWORD, data);
  udelay(1);
 }
}
