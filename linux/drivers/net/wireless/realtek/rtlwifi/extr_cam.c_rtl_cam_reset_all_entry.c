
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int * maps; } ;


 int BIT (int) ;
 size_t RWCAM ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

void rtl_cam_reset_all_entry(struct ieee80211_hw *hw)
{
 u32 ul_command;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 ul_command = BIT(31) | BIT(30);
 rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[RWCAM], ul_command);
}
