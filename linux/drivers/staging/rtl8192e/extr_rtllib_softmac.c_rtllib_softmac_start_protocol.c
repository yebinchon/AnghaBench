
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int wx_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtllib_start_protocol (struct rtllib_device*) ;

void rtllib_softmac_start_protocol(struct rtllib_device *ieee, u8 mesh_flag)
{
 mutex_lock(&ieee->wx_mutex);
 rtllib_start_protocol(ieee);
 mutex_unlock(&ieee->wx_mutex);
}
