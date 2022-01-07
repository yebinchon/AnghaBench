
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_dot11d_info {int dot11d_enabled; int max_tx_pwr_dbm_list; int channel_map; scalar_t__ country_ie_len; int state; } ;
struct ieee80211_device {int dev; } ;


 int DOT11D_STATE_NONE ;
 struct rt_dot11d_info* GET_DOT11D_INFO (struct ieee80211_device*) ;
 scalar_t__ MAX_CHANNEL_NUMBER ;
 int RESET_CIE_WATCHDOG (struct ieee80211_device*) ;
 int memset (int ,int,scalar_t__) ;
 int netdev_info (int ,char*) ;

void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
{
 struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(ieee);

 dot11d_info->dot11d_enabled = 0;

 dot11d_info->state = DOT11D_STATE_NONE;
 dot11d_info->country_ie_len = 0;
 memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
 memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 RESET_CIE_WATCHDOG(ieee);

 netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
}
