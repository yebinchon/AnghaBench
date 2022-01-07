
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;






 int RSI_REGION_ETSI ;
 int RSI_REGION_FCC ;
 int RSI_REGION_TELEC ;
 int RSI_REGION_WORLD ;

__attribute__((used)) static int rsi_map_region_code(enum nl80211_dfs_regions region_code)
{
 switch (region_code) {
 case 130:
  return RSI_REGION_FCC;
 case 131:
  return RSI_REGION_ETSI;
 case 129:
  return RSI_REGION_TELEC;
 case 128:
  return RSI_REGION_WORLD;
 }
 return RSI_REGION_WORLD;
}
