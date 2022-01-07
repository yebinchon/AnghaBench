
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; int flags; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {size_t size; int body; } ;
struct TYPE_6__ {TYPE_2__ ssid; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int need_commit; TYPE_3__ reg; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 size_t IW_ESSID_MAX_SIZE ;
 scalar_t__ SLP_SLEEP ;
 int SME_MODE_SET ;
 int ks_wlan_setup_parameter (struct ks_wlan_private*,int ) ;
 int memcpy (int ,char*,size_t) ;
 int memset (int ,int ,int) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_essid(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *dwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 size_t len;

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;



 if (!dwrq->essid.flags) {

  memset(priv->reg.ssid.body, 0, sizeof(priv->reg.ssid.body));
  priv->reg.ssid.size = 0;
 } else {
  len = dwrq->essid.length;

  if (len > 0 && extra[len - 1] == '\0')
   len--;


  if (len > IW_ESSID_MAX_SIZE)
   return -EINVAL;


  memset(priv->reg.ssid.body, 0, sizeof(priv->reg.ssid.body));
  memcpy(priv->reg.ssid.body, extra, len);
  priv->reg.ssid.size = len;
 }

 priv->need_commit |= SME_MODE_SET;

 ks_wlan_setup_parameter(priv, priv->need_commit);
 priv->need_commit = 0;
 return 0;
}
