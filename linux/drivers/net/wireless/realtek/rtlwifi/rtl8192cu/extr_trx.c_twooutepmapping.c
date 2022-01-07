
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_ep_map {int* ep_mapping; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_DMESG ;
 size_t RTL_TXQ_BCN ;
 size_t RTL_TXQ_BE ;
 size_t RTL_TXQ_BK ;
 size_t RTL_TXQ_HI ;
 size_t RTL_TXQ_MGT ;
 size_t RTL_TXQ_VI ;
 size_t RTL_TXQ_VO ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void twooutepmapping(struct ieee80211_hw *hw, bool is_chip8,
        bool bwificfg, struct rtl_ep_map *ep_map)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (bwificfg) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "USB Chip-B & WMM Setting.....\n");
  ep_map->ep_mapping[RTL_TXQ_BE] = 2;
  ep_map->ep_mapping[RTL_TXQ_BK] = 3;
  ep_map->ep_mapping[RTL_TXQ_VI] = 3;
  ep_map->ep_mapping[RTL_TXQ_VO] = 2;
  ep_map->ep_mapping[RTL_TXQ_MGT] = 2;
  ep_map->ep_mapping[RTL_TXQ_BCN] = 2;
  ep_map->ep_mapping[RTL_TXQ_HI] = 2;
 } else {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "USB typical Setting.....\n");
  ep_map->ep_mapping[RTL_TXQ_BE] = 3;
  ep_map->ep_mapping[RTL_TXQ_BK] = 3;
  ep_map->ep_mapping[RTL_TXQ_VI] = 2;
  ep_map->ep_mapping[RTL_TXQ_VO] = 2;
  ep_map->ep_mapping[RTL_TXQ_MGT] = 2;
  ep_map->ep_mapping[RTL_TXQ_BCN] = 2;
  ep_map->ep_mapping[RTL_TXQ_HI] = 2;
 }
}
