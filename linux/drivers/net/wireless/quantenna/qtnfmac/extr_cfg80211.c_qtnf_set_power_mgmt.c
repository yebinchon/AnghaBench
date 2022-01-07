
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int name; } ;


 int QLINK_PM_AUTO_STANDBY ;
 int QLINK_PM_OFF ;
 int pr_err (char*,int ,int) ;
 int qtnf_cmd_send_pm_set (struct qtnf_vif*,int ,int) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int qtnf_set_power_mgmt(struct wiphy *wiphy, struct net_device *dev,
          bool enabled, int timeout)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);
 int ret;

 ret = qtnf_cmd_send_pm_set(vif, enabled ? QLINK_PM_AUTO_STANDBY :
       QLINK_PM_OFF, timeout);
 if (ret)
  pr_err("%s: failed to set PM mode ret=%d\n", dev->name, ret);

 return ret;
}
