
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct adapter {int dummy; } ;


 int rtw_hal_write_rfreg (struct adapter*,int ,int ,int,int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_wx_write_rf(struct net_device *dev,
                            struct iw_request_info *info,
                            union iwreq_data *wrqu, char *extra)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 u32 path, addr, data32;


 path = *(u32 *)extra;
 addr = *((u32 *)extra + 1);
 data32 = *((u32 *)extra + 2);

 rtw_hal_write_rfreg(padapter, path, addr, 0xFFFFF, data32);

 return 0;
}
