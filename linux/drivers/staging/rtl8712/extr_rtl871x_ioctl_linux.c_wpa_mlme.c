
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct _adapter {int dummy; } ;


 int EOPNOTSUPP ;


 struct _adapter* netdev_priv (struct net_device*) ;
 int r8712_set_802_11_disassociate (struct _adapter*) ;

__attribute__((used)) static int wpa_mlme(struct net_device *dev, u32 command, u32 reason)
{
 struct _adapter *padapter = netdev_priv(dev);

 switch (command) {
 case 129:
  if (!r8712_set_802_11_disassociate(padapter))
   return -1;
  break;
 case 128:
  if (!r8712_set_802_11_disassociate(padapter))
   return -1;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
