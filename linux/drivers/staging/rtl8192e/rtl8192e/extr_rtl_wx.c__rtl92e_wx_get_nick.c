
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct r8192_priv {int wx_mutex; int nick; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int memcpy (char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int strlen (int ) ;

__attribute__((used)) static int _rtl92e_wx_get_nick(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 mutex_lock(&priv->wx_mutex);
 wrqu->data.length = strlen(priv->nick);
 memcpy(extra, priv->nick, wrqu->data.length);
 wrqu->data.flags = 1;
 mutex_unlock(&priv->wx_mutex);
 return 0;
}
