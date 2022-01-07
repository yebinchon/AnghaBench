
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_mlme {int cmd; } ;
struct _adapter {int dummy; } ;


 int EOPNOTSUPP ;


 struct _adapter* netdev_priv (struct net_device*) ;
 int r8712_set_802_11_disassociate (struct _adapter*) ;

__attribute__((used)) static int r871x_wx_set_mlme(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 int ret = 0;
 struct _adapter *padapter = netdev_priv(dev);
 struct iw_mlme *mlme = (struct iw_mlme *) extra;

 if (mlme == ((void*)0))
  return -1;
 switch (mlme->cmd) {
 case 129:
  if (!r8712_set_802_11_disassociate(padapter))
   ret = -1;
  break;
 case 128:
  if (!r8712_set_802_11_disassociate(padapter))
   ret = -1;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return ret;
}
