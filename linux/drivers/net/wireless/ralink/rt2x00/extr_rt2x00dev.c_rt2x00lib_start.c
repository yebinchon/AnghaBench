
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {int flags; scalar_t__ intf_associated; scalar_t__ intf_sta_count; scalar_t__ intf_ap_count; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* pre_reset_hw ) (struct rt2x00_dev*) ;} ;


 int DEVICE_STATE_RESET ;
 int DEVICE_STATE_STARTED ;
 int clear_bit (int ,int *) ;
 int rt2x00lib_enable_radio (struct rt2x00_dev*) ;
 int rt2x00lib_initialize (struct rt2x00_dev*) ;
 int rt2x00lib_load_firmware (struct rt2x00_dev*) ;
 int rt2x00lib_stop (struct rt2x00_dev*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rt2x00_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

int rt2x00lib_start(struct rt2x00_dev *rt2x00dev)
{
 int retval = 0;

 if (test_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags)) {




  set_bit(DEVICE_STATE_RESET, &rt2x00dev->flags);
  rt2x00dev->ops->lib->pre_reset_hw(rt2x00dev);
  rt2x00lib_stop(rt2x00dev);
 }





 retval = rt2x00lib_load_firmware(rt2x00dev);
 if (retval)
  goto out;




 retval = rt2x00lib_initialize(rt2x00dev);
 if (retval)
  goto out;

 rt2x00dev->intf_ap_count = 0;
 rt2x00dev->intf_sta_count = 0;
 rt2x00dev->intf_associated = 0;


 retval = rt2x00lib_enable_radio(rt2x00dev);
 if (retval)
  goto out;

 set_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags);

out:
 clear_bit(DEVICE_STATE_RESET, &rt2x00dev->flags);
 return retval;
}
