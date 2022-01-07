
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int active_scan; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static int r8192_wx_set_scan_type(struct net_device *dev, struct iw_request_info *aa,
     union iwreq_data *wrqu, char *p)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 int *parms = (int *)p;
 int mode = parms[0];

 priv->ieee80211->active_scan = mode;

 return 1;
}
