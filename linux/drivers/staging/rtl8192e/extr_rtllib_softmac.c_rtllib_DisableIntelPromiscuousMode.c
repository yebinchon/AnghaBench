
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int bNetPromiscuousMode; int (* SetHwRegHandler ) (struct net_device*,int ,int *) ;int (* AllowAllDestAddrHandler ) (struct net_device*,int,int) ;} ;
struct net_device {int dummy; } ;


 int HW_VAR_CECHK_BSSID ;
 int netdev_info (struct net_device*,char*) ;
 struct rtllib_device* netdev_priv_rsl (struct net_device*) ;
 int stub1 (struct net_device*,int,int) ;
 int stub2 (struct net_device*,int ,int *) ;

void rtllib_DisableIntelPromiscuousMode(struct net_device *dev,
  bool bInitState)
{
 bool bFilterOutNonAssociatedBSSID = 1;

 struct rtllib_device *ieee = netdev_priv_rsl(dev);

 netdev_info(dev, "========>Exit Intel Promiscuous Mode\n");

 ieee->AllowAllDestAddrHandler(dev, 0, !bInitState);
 ieee->SetHwRegHandler(dev, HW_VAR_CECHK_BSSID,
        (u8 *)&bFilterOutNonAssociatedBSSID);

 ieee->bNetPromiscuousMode = 0;
}
