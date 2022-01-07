
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {int wx_mutex; int rtllib; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_wx_set_rts (int ,struct iw_request_info*,union iwreq_data*,char*) ;

__attribute__((used)) static int _rtl92e_wx_set_rts(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu, char *extra)
{
 int ret;
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->bHwRadioOff)
  return 0;

 mutex_lock(&priv->wx_mutex);

 ret = rtllib_wx_set_rts(priv->rtllib, info, wrqu, extra);

 mutex_unlock(&priv->wx_mutex);

 return ret;
}
