
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {int flags; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* initialize ) (struct rt2x00_dev*) ;} ;


 int DEVICE_STATE_INITIALIZED ;
 int REQUIRE_DELAYED_RFKILL ;
 scalar_t__ rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 int rt2x00queue_initialize (struct rt2x00_dev*) ;
 int rt2x00queue_uninitialize (struct rt2x00_dev*) ;
 int rt2x00rfkill_register (struct rt2x00_dev*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rt2x00_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rt2x00lib_initialize(struct rt2x00_dev *rt2x00dev)
{
 int status;

 if (test_bit(DEVICE_STATE_INITIALIZED, &rt2x00dev->flags))
  return 0;




 status = rt2x00queue_initialize(rt2x00dev);
 if (status)
  return status;




 status = rt2x00dev->ops->lib->initialize(rt2x00dev);
 if (status) {
  rt2x00queue_uninitialize(rt2x00dev);
  return status;
 }

 set_bit(DEVICE_STATE_INITIALIZED, &rt2x00dev->flags);




 if (rt2x00_has_cap_flag(rt2x00dev, REQUIRE_DELAYED_RFKILL))
  rt2x00rfkill_register(rt2x00dev);

 return 0;
}
