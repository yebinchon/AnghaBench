
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {TYPE_2__* ops; int flags; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* uninitialize ) (struct rt2x00_dev*) ;} ;


 int DEVICE_STATE_INITIALIZED ;
 int REQUIRE_DELAYED_RFKILL ;
 scalar_t__ rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 int rt2x00queue_uninitialize (struct rt2x00_dev*) ;
 int rt2x00rfkill_unregister (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void rt2x00lib_uninitialize(struct rt2x00_dev *rt2x00dev)
{
 if (!test_and_clear_bit(DEVICE_STATE_INITIALIZED, &rt2x00dev->flags))
  return;




 if (rt2x00_has_cap_flag(rt2x00dev, REQUIRE_DELAYED_RFKILL))
  rt2x00rfkill_unregister(rt2x00dev);




 rt2x00dev->ops->lib->uninitialize(rt2x00dev);




 rt2x00queue_uninitialize(rt2x00dev);
}
