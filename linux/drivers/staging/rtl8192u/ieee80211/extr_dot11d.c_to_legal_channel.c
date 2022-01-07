
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct rt_dot11d_info {scalar_t__* channel_map; } ;
struct ieee80211_device {int dev; } ;


 struct rt_dot11d_info* GET_DOT11D_INFO (struct ieee80211_device*) ;
 size_t MAX_CHANNEL_NUMBER ;
 int netdev_err (int ,char*) ;

int to_legal_channel(struct ieee80211_device *dev, u8 channel)
{
 struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
 u8 default_chn = 0;
 u32 i = 0;

 for (i = 1; i <= MAX_CHANNEL_NUMBER; i++) {
  if (dot11d_info->channel_map[i] > 0) {
   default_chn = i;
   break;
  }
 }

 if (channel > MAX_CHANNEL_NUMBER) {
  netdev_err(dev->dev, "is_legal_channel(): Invalid Channel\n");
  return default_chn;
 }

 if (dot11d_info->channel_map[channel] > 0)
  return channel;

 return default_chn;
}
