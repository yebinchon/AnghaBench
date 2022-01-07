
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int sync_event; } ;
struct net_device {int dummy; } ;


 int ETIME ;
 int msecs_to_jiffies (int) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wait_for_completion_timeout (int *,int ) ;
 int wilc_wlan_start (struct wilc*) ;

__attribute__((used)) static int wilc_start_firmware(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;
 int ret = 0;

 ret = wilc_wlan_start(wilc);
 if (ret < 0)
  return ret;

 if (!wait_for_completion_timeout(&wilc->sync_event,
      msecs_to_jiffies(5000)))
  return -ETIME;

 return 0;
}
