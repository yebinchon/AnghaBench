
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {scalar_t__ intf_associated; scalar_t__ intf_sta_count; scalar_t__ intf_ap_count; int flags; } ;


 int DEVICE_STATE_STARTED ;
 int rt2x00lib_disable_radio (struct rt2x00_dev*) ;
 int test_and_clear_bit (int ,int *) ;

void rt2x00lib_stop(struct rt2x00_dev *rt2x00dev)
{
 if (!test_and_clear_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags))
  return;





 rt2x00lib_disable_radio(rt2x00dev);

 rt2x00dev->intf_ap_count = 0;
 rt2x00dev->intf_sta_count = 0;
 rt2x00dev->intf_associated = 0;
}
