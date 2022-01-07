
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct r8192_priv {int wx_mutex; int reset_wq; } ;
struct net_device {int dev_addr; } ;


 int ether_addr_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int _rtl92e_set_mac_adr(struct net_device *dev, void *mac)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct sockaddr *addr = mac;

 mutex_lock(&priv->wx_mutex);

 ether_addr_copy(dev->dev_addr, addr->sa_data);

 schedule_work(&priv->reset_wq);
 mutex_unlock(&priv->wx_mutex);

 return 0;
}
