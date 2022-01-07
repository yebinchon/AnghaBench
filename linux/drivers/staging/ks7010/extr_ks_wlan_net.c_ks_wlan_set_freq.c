
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e; int m; } ;
union iwreq_data {TYPE_1__ freq; } ;
typedef int u8 ;
struct net_device {int name; } ;
struct TYPE_4__ {int channel; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int need_commit; TYPE_2__ reg; } ;
struct iw_request_info {int dummy; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int SME_MODE_SET ;
 int* frequency_list ;
 int netdev_dbg (struct net_device*,char*,int ,int) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_freq(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *fwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 int channel;

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;



 if ((fwrq->freq.e == 1) &&
     (fwrq->freq.m >= 241200000) && (fwrq->freq.m <= 248700000)) {
  int f = fwrq->freq.m / 100000;
  int c = 0;

  while ((c < 14) && (f != frequency_list[c]))
   c++;

  fwrq->freq.e = 0;
  fwrq->freq.m = c + 1;
 }

 if ((fwrq->freq.m > 1000) || (fwrq->freq.e > 0))
  return -EOPNOTSUPP;

 channel = fwrq->freq.m;



 if ((channel < 1) || (channel > 14)) {
  netdev_dbg(dev, "%s: New channel value of %d is invalid!\n",
      dev->name, fwrq->freq.m);
  return -EINVAL;
 }


 priv->reg.channel = (u8)(channel);
 priv->need_commit |= SME_MODE_SET;

 return -EINPROGRESS;
}
