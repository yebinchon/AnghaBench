
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int H2C_88E_JOINBSSRPT ;
 int SET_H2CCMD_JOINBSSRPT_PARM_OPMODE (int *,int ) ;
 int rtl88e_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;

void rtl88e_set_fw_joinbss_report_cmd(struct ieee80211_hw *hw, u8 mstatus)
{
 u8 u1_joinbssrpt_parm[1] = { 0 };

 SET_H2CCMD_JOINBSSRPT_PARM_OPMODE(u1_joinbssrpt_parm, mstatus);

 rtl88e_fill_h2c_cmd(hw, H2C_88E_JOINBSSRPT, 1, u1_joinbssrpt_parm);
}
