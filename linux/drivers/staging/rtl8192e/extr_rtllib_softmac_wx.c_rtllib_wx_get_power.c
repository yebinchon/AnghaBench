
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int flags; int value; } ;
union iwreq_data {TYPE_1__ power; } ;
struct rtllib_device {int ps; int ps_timeout; int ps_period; int wx_mutex; } ;
struct iw_request_info {int dummy; } ;


 int IW_POWER_ALL_R ;
 int IW_POWER_MULTICAST_R ;
 int IW_POWER_PERIOD ;
 int IW_POWER_TIMEOUT ;
 int IW_POWER_TYPE ;
 int IW_POWER_UNICAST_R ;
 int RTLLIB_PS_DISABLED ;
 int RTLLIB_PS_MBCAST ;
 int RTLLIB_PS_UNICAST ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int rtllib_wx_get_power(struct rtllib_device *ieee,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 mutex_lock(&ieee->wx_mutex);

 if (ieee->ps == RTLLIB_PS_DISABLED) {
  wrqu->power.disabled = 1;
  goto exit;
 }

 wrqu->power.disabled = 0;

 if ((wrqu->power.flags & IW_POWER_TYPE) == IW_POWER_TIMEOUT) {
  wrqu->power.flags = IW_POWER_TIMEOUT;
  wrqu->power.value = ieee->ps_timeout * 1000;
 } else {
  wrqu->power.flags = IW_POWER_PERIOD;
  wrqu->power.value = ieee->ps_period * 1000;
 }

 if ((ieee->ps & (RTLLIB_PS_MBCAST | RTLLIB_PS_UNICAST)) ==
     (RTLLIB_PS_MBCAST | RTLLIB_PS_UNICAST))
  wrqu->power.flags |= IW_POWER_ALL_R;
 else if (ieee->ps & RTLLIB_PS_MBCAST)
  wrqu->power.flags |= IW_POWER_MULTICAST_R;
 else
  wrqu->power.flags |= IW_POWER_UNICAST_R;

exit:
 mutex_unlock(&ieee->wx_mutex);
 return 0;

}
