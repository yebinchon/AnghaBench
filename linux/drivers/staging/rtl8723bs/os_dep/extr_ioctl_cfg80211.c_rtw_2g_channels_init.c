
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;


 int RTW_2G_CHANNELS_NUM ;
 int memcpy (void*,void*,int) ;
 scalar_t__ rtw_2ghz_channels ;

__attribute__((used)) static void rtw_2g_channels_init(struct ieee80211_channel *channels)
{
 memcpy((void*)channels, (void*)rtw_2ghz_channels,
  sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
 );
}
