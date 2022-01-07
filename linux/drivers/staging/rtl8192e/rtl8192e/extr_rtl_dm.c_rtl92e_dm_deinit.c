
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int _rtl92e_dm_deinit_fsync (struct net_device*) ;

void rtl92e_dm_deinit(struct net_device *dev)
{

 _rtl92e_dm_deinit_fsync(dev);

}
