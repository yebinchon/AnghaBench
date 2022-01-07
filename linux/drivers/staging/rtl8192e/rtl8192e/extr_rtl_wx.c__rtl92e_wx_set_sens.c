
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union iwreq_data {TYPE_1__ sens; } ;
struct r8192_priv {scalar_t__ (* rf_set_sens ) (struct net_device*,int ) ;int wx_mutex; int sens; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 short EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*,int ) ;

__attribute__((used)) static int _rtl92e_wx_set_sens(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 short err = 0;

 if (priv->bHwRadioOff)
  return 0;

 mutex_lock(&priv->wx_mutex);
 if (priv->rf_set_sens == ((void*)0)) {
  err = -1;
  goto exit;
 }
 if (priv->rf_set_sens(dev, wrqu->sens.value) == 0)
  priv->sens = wrqu->sens.value;
 else
  err = -EINVAL;

exit:
 mutex_unlock(&priv->wx_mutex);

 return err;
}
