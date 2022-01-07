
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int wx_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtllib_stop_protocol (struct rtllib_device*,int ) ;
 int rtllib_stop_scan_syncro (struct rtllib_device*) ;

void rtllib_softmac_stop_protocol(struct rtllib_device *ieee, u8 mesh_flag,
      u8 shutdown)
{
 rtllib_stop_scan_syncro(ieee);
 mutex_lock(&ieee->wx_mutex);
 rtllib_stop_protocol(ieee, shutdown);
 mutex_unlock(&ieee->wx_mutex);
}
