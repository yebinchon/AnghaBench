
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_dot11d_info {int state; } ;
struct ieee80211_device {int dummy; } ;





 int GET_CIE_WATCHDOG (struct ieee80211_device*) ;
 struct rt_dot11d_info* GET_DOT11D_INFO (struct ieee80211_device*) ;
 int dot11d_reset (struct ieee80211_device*) ;

void dot11d_scan_complete(struct ieee80211_device *dev)
{
 struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);

 switch (dot11d_info->state) {
 case 129:
  dot11d_info->state = 130;
  break;

 case 130:
  if (GET_CIE_WATCHDOG(dev) == 0) {

   dot11d_reset(dev);
  }
  break;
 case 128:
  break;
 }
}
