
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ frag; } ;
struct r8192_priv {TYPE_2__* rtllib; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int fts; } ;


 int DEFAULT_FRAG_THRESHOLD ;
 int EINVAL ;
 int MAX_FRAG_THRESHOLD ;
 int MIN_FRAG_THRESHOLD ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static int _rtl92e_wx_set_frag(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->bHwRadioOff)
  return 0;

 if (wrqu->frag.disabled)
  priv->rtllib->fts = DEFAULT_FRAG_THRESHOLD;
 else {
  if (wrqu->frag.value < MIN_FRAG_THRESHOLD ||
      wrqu->frag.value > MAX_FRAG_THRESHOLD)
   return -EINVAL;

  priv->rtllib->fts = wrqu->frag.value & ~0x1;
 }

 return 0;
}
