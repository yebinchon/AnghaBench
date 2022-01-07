
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int H2C_8723B_MSRRPT ;
 int SET_H2CCMD_MSRRPT_PARM_MACID_IND (int *,int ) ;
 int SET_H2CCMD_MSRRPT_PARM_OPMODE (int *,int ) ;
 int rtl8723be_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;

void rtl8723be_set_fw_media_status_rpt_cmd(struct ieee80211_hw *hw, u8 mstatus)
{
 u8 parm[3] = { 0, 0, 0 };






 SET_H2CCMD_MSRRPT_PARM_OPMODE(parm, mstatus);
 SET_H2CCMD_MSRRPT_PARM_MACID_IND(parm, 0);

 rtl8723be_fill_h2c_cmd(hw, H2C_8723B_MSRRPT, 3, parm);
}
