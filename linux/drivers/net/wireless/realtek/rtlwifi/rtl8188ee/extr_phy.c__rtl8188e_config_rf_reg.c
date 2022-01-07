
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int RFREG_OFFSET_MASK ;
 int mdelay (int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl8188e_config_rf_reg(struct ieee80211_hw *hw, u32 addr,
        u32 data, enum radio_path rfpath,
        u32 regaddr)
{
 if (addr == 0xffe) {
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
  rtl_set_rfreg(hw, rfpath, regaddr,
         RFREG_OFFSET_MASK,
         data);
  udelay(1);
 }
}
