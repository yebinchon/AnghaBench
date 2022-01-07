
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 int EOPNOTSUPP ;


 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_set_802_11_disassociate (struct adapter*) ;

__attribute__((used)) static int wpa_mlme(struct net_device *dev, u32 command, u32 reason)
{
 int ret = 0;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);

 switch (command) {
 case 129:

  if (!rtw_set_802_11_disassociate(padapter))
   ret = -1;

  break;

 case 128:

  if (!rtw_set_802_11_disassociate(padapter))
   ret = -1;

  break;

 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;

}
