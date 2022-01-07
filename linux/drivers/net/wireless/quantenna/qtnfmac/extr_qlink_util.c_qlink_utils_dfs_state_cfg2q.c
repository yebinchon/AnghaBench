
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qlink_dfs_state { ____Placeholder_qlink_dfs_state } qlink_dfs_state ;
typedef enum nl80211_dfs_state { ____Placeholder_nl80211_dfs_state } nl80211_dfs_state ;





 int QLINK_DFS_AVAILABLE ;
 int QLINK_DFS_UNAVAILABLE ;
 int QLINK_DFS_USABLE ;

enum qlink_dfs_state qlink_utils_dfs_state_cfg2q(enum nl80211_dfs_state state)
{
 switch (state) {
 case 128:
  return QLINK_DFS_USABLE;
 case 130:
  return QLINK_DFS_AVAILABLE;
 case 129:
 default:
  return QLINK_DFS_UNAVAILABLE;
 }
}
