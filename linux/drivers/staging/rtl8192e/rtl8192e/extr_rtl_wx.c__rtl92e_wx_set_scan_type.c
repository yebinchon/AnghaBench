
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {TYPE_1__* rtllib; scalar_t__ bHwRadioOff; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int active_scan; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static int _rtl92e_wx_set_scan_type(struct net_device *dev,
        struct iw_request_info *aa,
        union iwreq_data *wrqu, char *p)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int *parms = (int *)p;
 int mode = parms[0];

 if (priv->bHwRadioOff)
  return 0;

 priv->rtllib->active_scan = mode;

 return 1;
}
