
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {int wx_mutex; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int softmac_features; } ;


 int IEEE_SOFTMAC_SCAN ;
 int _rtl92e_down (struct net_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtllib_act_scanning (TYPE_1__*,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_stop_scan (TYPE_1__*) ;

__attribute__((used)) static int _rtl92e_close(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int ret;

 if ((rtllib_act_scanning(priv->rtllib, 0)) &&
  !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) {
  rtllib_stop_scan(priv->rtllib);
 }

 mutex_lock(&priv->wx_mutex);

 ret = _rtl92e_down(dev, 1);

 mutex_unlock(&priv->wx_mutex);

 return ret;

}
