
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hw {int dummy; } ;


 int H2C_8821AE_P2P_PS_CTW_CMD ;
 int rtl8821ae_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;

__attribute__((used)) static void rtl8821ae_set_p2p_ctw_period_cmd(struct ieee80211_hw *hw, u8 ctwindow)
{
 u8 u1_ctwindow_period[1] = { ctwindow};

 rtl8821ae_fill_h2c_cmd(hw, H2C_8821AE_P2P_PS_CTW_CMD, 1,
          u1_ctwindow_period);
}
