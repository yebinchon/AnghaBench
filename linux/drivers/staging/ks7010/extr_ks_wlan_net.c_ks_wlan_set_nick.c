
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int nick; } ;
struct iw_request_info {int dummy; } ;


 int E2BIG ;
 int EINPROGRESS ;
 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_nick(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *dwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;



 if (dwrq->data.length > 16 + 1)
  return -E2BIG;

 memset(priv->nick, 0, sizeof(priv->nick));
 memcpy(priv->nick, extra, dwrq->data.length);

 return -EINPROGRESS;
}
