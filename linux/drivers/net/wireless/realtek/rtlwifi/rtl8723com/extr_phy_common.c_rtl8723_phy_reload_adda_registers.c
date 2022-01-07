
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 int rtl_set_bbreg (struct ieee80211_hw*,size_t,int ,size_t) ;

void rtl8723_phy_reload_adda_registers(struct ieee80211_hw *hw,
           u32 *addareg, u32 *addabackup,
           u32 regiesternum)
{
 u32 i;

 for (i = 0; i < regiesternum; i++)
  rtl_set_bbreg(hw, addareg[i], MASKDWORD, addabackup[i]);
}
