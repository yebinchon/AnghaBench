
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {int crcmon; int wx_mutex; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int DMESG (char*,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int r8192_wx_set_crcmon(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int *parms = (int *)extra;
 int enable = (parms[0] > 0);

 mutex_lock(&priv->wx_mutex);

 if (enable)
  priv->crcmon = 1;
 else
  priv->crcmon = 0;

 DMESG("bad CRC in monitor mode are %s",
       priv->crcmon ? "accepted" : "rejected");

 mutex_unlock(&priv->wx_mutex);

 return 0;
}
