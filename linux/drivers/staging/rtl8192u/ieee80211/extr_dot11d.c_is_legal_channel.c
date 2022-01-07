
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rt_dot11d_info {scalar_t__* channel_map; } ;
struct ieee80211_device {int dev; } ;


 struct rt_dot11d_info* GET_DOT11D_INFO (struct ieee80211_device*) ;
 size_t MAX_CHANNEL_NUMBER ;
 int netdev_err (int ,char*) ;

int is_legal_channel(struct ieee80211_device *dev, u8 channel)
{
 struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);

 if (channel > MAX_CHANNEL_NUMBER) {
  netdev_err(dev->dev, "is_legal_channel(): Invalid Channel\n");
  return 0;
 }
 if (dot11d_info->channel_map[channel] > 0)
  return 1;
 return 0;
}
