
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int * maps; } ;


 size_t EFUSE_HWSET_MAX_SIZE ;
 int efuse_power_switch (struct ieee80211_hw*,int,int) ;
 int read_efuse (struct ieee80211_hw*,int ,int ,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void efuse_read_all_map(struct ieee80211_hw *hw, u8 *efuse)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 efuse_power_switch(hw, 0, 1);
 read_efuse(hw, 0, rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE], efuse);
 efuse_power_switch(hw, 0, 0);
}
