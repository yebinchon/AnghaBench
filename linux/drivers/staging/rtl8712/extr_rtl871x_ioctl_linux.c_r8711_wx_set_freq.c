
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_freq {int e; int m; } ;
union iwreq_data {struct iw_freq freq; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int channel; } ;
struct _adapter {TYPE_1__ registrypriv; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int* frequency_list ;
 struct _adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int r8711_wx_set_freq(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);
 struct iw_freq *fwrq = &wrqu->freq;
 int rc = 0;


 if ((fwrq->e == 1) &&
   (fwrq->m >= (int) 2.412e8) &&
   (fwrq->m <= (int) 2.487e8)) {
  int f = fwrq->m / 100000;
  int c = 0;

  while ((c < 14) && (f != frequency_list[c]))
   c++;
  fwrq->e = 0;
  fwrq->m = c + 1;
 }

 if ((fwrq->m > 14) || (fwrq->e > 0)) {
  rc = -EOPNOTSUPP;
 } else {
  int channel = fwrq->m;

  if ((channel < 1) || (channel > 14)) {
   rc = -EINVAL;
  } else {

   padapter->registrypriv.channel = channel;
  }
 }
 return rc;
}
