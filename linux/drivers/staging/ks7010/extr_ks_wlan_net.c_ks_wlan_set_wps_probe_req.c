
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ielen; scalar_t__ ie; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ wps; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
typedef int len ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int SME_WPS_PROBE_REQUEST ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int* memcpy (scalar_t__,...) ;
 int netdev_dbg (struct net_device*,char*,int,int,int,int,int,int,int,int,int) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_wps_probe_req(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_point *dwrq, char *extra)
{
 u8 *p = extra;
 unsigned char len;
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (p[1] + 2 != dwrq->length || dwrq->length > 256)
  return -EINVAL;

 priv->wps.ielen = p[1] + 2 + 1;
 len = p[1] + 2;

 memcpy(priv->wps.ie, &len, sizeof(len));
 p = memcpy(priv->wps.ie + 1, p, len);

 netdev_dbg(dev, "%d(%#x): %02X %02X %02X %02X ... %02X %02X %02X\n",
     priv->wps.ielen, priv->wps.ielen, p[0], p[1], p[2], p[3],
     p[priv->wps.ielen - 3], p[priv->wps.ielen - 2],
     p[priv->wps.ielen - 1]);

 hostif_sme_enqueue(priv, SME_WPS_PROBE_REQUEST);

 return 0;
}
