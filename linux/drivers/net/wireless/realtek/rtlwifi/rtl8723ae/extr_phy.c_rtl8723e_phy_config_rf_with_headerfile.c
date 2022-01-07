
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;






 int RFREG_OFFSET_MASK ;
 int RTL8723ERADIOA_1TARRAYLENGTH ;
 int* RTL8723E_RADIOA_1TARRAY ;
 int mdelay (int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int,int ,int) ;
 int udelay (int) ;

bool rtl8723e_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
         enum radio_path rfpath)
{
 int i;
 bool rtstatus = 1;
 u32 *radioa_array_table;
 u16 radioa_arraylen;

 radioa_arraylen = RTL8723ERADIOA_1TARRAYLENGTH;
 radioa_array_table = RTL8723E_RADIOA_1TARRAY;

 rtstatus = 1;

 switch (rfpath) {
 case 131:
  for (i = 0; i < radioa_arraylen; i = i + 2) {
   if (radioa_array_table[i] == 0xfe) {
    mdelay(50);
   } else if (radioa_array_table[i] == 0xfd) {
    mdelay(5);
   } else if (radioa_array_table[i] == 0xfc) {
    mdelay(1);
   } else if (radioa_array_table[i] == 0xfb) {
    udelay(50);
   } else if (radioa_array_table[i] == 0xfa) {
    udelay(5);
   } else if (radioa_array_table[i] == 0xf9) {
    udelay(1);
   } else {
    rtl_set_rfreg(hw, rfpath, radioa_array_table[i],
           RFREG_OFFSET_MASK,
           radioa_array_table[i + 1]);
    udelay(1);
   }
  }
  break;
 case 130:
 case 129:
 case 128:
  break;
 }
 return 1;
}
