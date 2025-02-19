
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int nick; } ;
struct iw_request_info {int dummy; } ;


 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int ks_wlan_get_nick(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *dwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 strncpy(extra, priv->nick, 16);
 extra[16] = '\0';
 dwrq->data.length = strlen(extra) + 1;

 return 0;
}
