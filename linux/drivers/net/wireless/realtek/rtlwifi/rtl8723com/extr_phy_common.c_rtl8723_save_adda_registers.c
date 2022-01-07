
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ieee80211_hw {int dummy; } ;


 int MASKDWORD ;
 size_t rtl_get_bbreg (struct ieee80211_hw*,size_t,int ) ;

void rtl8723_save_adda_registers(struct ieee80211_hw *hw, u32 *addareg,
     u32 *addabackup, u32 registernum)
{
 u32 i;

 for (i = 0; i < registernum; i++)
  addabackup[i] = rtl_get_bbreg(hw, addareg[i], MASKDWORD);
}
