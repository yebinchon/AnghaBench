
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {TYPE_1__* cfg; } ;
struct rtl_efuse {int ** efuse_map; scalar_t__ autoload_failflag; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int * maps; } ;


 size_t EFUSE_HWSET_MAX_SIZE ;
 size_t EFUSE_INIT_MAP ;
 size_t EFUSE_MODIFY_MAP ;
 int efuse_read_all_map (struct ieee80211_hw*,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int,int ) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_efuse_shadow_map_update(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 if (rtlefuse->autoload_failflag)
  memset((&rtlefuse->efuse_map[EFUSE_INIT_MAP][0]),
         0xFF, rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE]);
 else
  efuse_read_all_map(hw, &rtlefuse->efuse_map[EFUSE_INIT_MAP][0]);

 memcpy(&rtlefuse->efuse_map[EFUSE_MODIFY_MAP][0],
   &rtlefuse->efuse_map[EFUSE_INIT_MAP][0],
   rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE]);

}
