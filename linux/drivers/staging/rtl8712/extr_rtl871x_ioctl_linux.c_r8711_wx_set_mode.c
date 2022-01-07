
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {int dummy; } ;
typedef enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;


 int EINVAL ;




 int Ndis802_11APMode ;
 int Ndis802_11AutoUnknown ;
 int Ndis802_11IBSS ;
 int Ndis802_11Infrastructure ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int r8712_set_802_11_infrastructure_mode (struct _adapter*,int) ;
 int r8712_setopmode_cmd (struct _adapter*,int) ;

__attribute__((used)) static int r8711_wx_set_mode(struct net_device *dev,
        struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct _adapter *padapter = netdev_priv(dev);
 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType;

 switch (wrqu->mode) {
 case 130:
  networkType = Ndis802_11AutoUnknown;
  break;
 case 131:
  networkType = Ndis802_11IBSS;
  break;
 case 128:
  networkType = Ndis802_11APMode;
  break;
 case 129:
  networkType = Ndis802_11Infrastructure;
  break;
 default:
  return -EINVAL;
 }
 if (Ndis802_11APMode == networkType)
  r8712_setopmode_cmd(padapter, networkType);
 else
  r8712_setopmode_cmd(padapter, Ndis802_11AutoUnknown);

 r8712_set_802_11_infrastructure_mode(padapter, networkType);
 return 0;
}
