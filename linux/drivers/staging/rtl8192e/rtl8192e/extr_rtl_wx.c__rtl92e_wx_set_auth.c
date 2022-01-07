
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int param; } ;
struct r8192_priv {int wx_mutex; int rtllib; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_wx_set_auth (int ,struct iw_request_info*,int *,char*) ;

__attribute__((used)) static int _rtl92e_wx_set_auth(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *data, char *extra)
{
 int ret = 0;

 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->bHwRadioOff)
  return 0;

 mutex_lock(&priv->wx_mutex);
 ret = rtllib_wx_set_auth(priv->rtllib, info, &data->param, extra);
 mutex_unlock(&priv->wx_mutex);
 return ret;
}
