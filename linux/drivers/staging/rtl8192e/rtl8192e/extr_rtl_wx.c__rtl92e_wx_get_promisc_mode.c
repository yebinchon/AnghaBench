
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
union iwreq_data {TYPE_2__ data; } ;
struct TYPE_3__ {int bPromiscuousOn; int bFilterSourceStationFrame; } ;
struct rtllib_device {TYPE_1__ IntelPromiscuousModeInfo; } ;
struct r8192_priv {int wx_mutex; struct rtllib_device* rtllib; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int snprintf (char*,int,char*,int,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int _rtl92e_wx_get_promisc_mode(struct net_device *dev,
           struct iw_request_info *info,
           union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtllib_device *ieee = priv->rtllib;

 mutex_lock(&priv->wx_mutex);

 snprintf(extra, 45, "PromiscuousMode:%d, FilterSrcSTAFrame:%d",
   ieee->IntelPromiscuousModeInfo.bPromiscuousOn,
   ieee->IntelPromiscuousModeInfo.bFilterSourceStationFrame);
 wrqu->data.length = strlen(extra) + 1;

 mutex_unlock(&priv->wx_mutex);

 return 0;
}
