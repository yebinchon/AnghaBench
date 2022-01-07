
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {int wx_mutex; int rtllib; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_wx_get_essid (int ,struct iw_request_info*,union iwreq_data*,char*) ;

__attribute__((used)) static int _rtl92e_wx_get_essid(struct net_device *dev,
    struct iw_request_info *a,
    union iwreq_data *wrqu, char *b)
{
 int ret;
 struct r8192_priv *priv = rtllib_priv(dev);

 mutex_lock(&priv->wx_mutex);

 ret = rtllib_wx_get_essid(priv->rtllib, a, wrqu, b);

 mutex_unlock(&priv->wx_mutex);

 return ret;
}
