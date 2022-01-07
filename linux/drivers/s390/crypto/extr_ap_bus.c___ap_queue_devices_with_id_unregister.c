
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int qid; } ;


 int AP_QID_CARD (int ) ;
 int device_unregister (struct device*) ;
 scalar_t__ is_queue_dev (struct device*) ;
 TYPE_1__* to_ap_queue (struct device*) ;

__attribute__((used)) static int __ap_queue_devices_with_id_unregister(struct device *dev, void *data)
{
 if (is_queue_dev(dev) &&
     AP_QID_CARD(to_ap_queue(dev)->qid) == (int)(long) data)
  device_unregister(dev);
 return 0;
}
