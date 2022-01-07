
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ep_map {int* ep_mapping; } ;
struct ieee80211_hw {int dummy; } ;


 size_t RTL_TXQ_BCN ;
 size_t RTL_TXQ_BE ;
 size_t RTL_TXQ_BK ;
 size_t RTL_TXQ_HI ;
 size_t RTL_TXQ_MGT ;
 size_t RTL_TXQ_VI ;
 size_t RTL_TXQ_VO ;

__attribute__((used)) static void oneoutepmapping(struct ieee80211_hw *hw, struct rtl_ep_map *ep_map)
{
 ep_map->ep_mapping[RTL_TXQ_BE] = 2;
 ep_map->ep_mapping[RTL_TXQ_BK] = 2;
 ep_map->ep_mapping[RTL_TXQ_VI] = 2;
 ep_map->ep_mapping[RTL_TXQ_VO] = 2;
 ep_map->ep_mapping[RTL_TXQ_MGT] = 2;
 ep_map->ep_mapping[RTL_TXQ_BCN] = 2;
 ep_map->ep_mapping[RTL_TXQ_HI] = 2;
}
