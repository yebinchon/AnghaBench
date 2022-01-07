
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ips_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl92e_ips_leave (struct net_device*) ;
 scalar_t__ rtllib_priv (struct net_device*) ;

void rtl92e_rtllib_ips_leave(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);

 mutex_lock(&priv->rtllib->ips_mutex);
 rtl92e_ips_leave(dev);
 mutex_unlock(&priv->rtllib->ips_mutex);
}
