
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ap_driver {struct ap_device_id* ids; } ;
struct ap_device_id {int match_flags; scalar_t__ dev_type; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;


 int AP_DEVICE_ID_MATCH_CARD_TYPE ;
 int AP_DEVICE_ID_MATCH_QUEUE_TYPE ;
 scalar_t__ is_card_dev (struct device*) ;
 scalar_t__ is_queue_dev (struct device*) ;
 TYPE_1__* to_ap_dev (struct device*) ;
 struct ap_driver* to_ap_drv (struct device_driver*) ;

__attribute__((used)) static int ap_bus_match(struct device *dev, struct device_driver *drv)
{
 struct ap_driver *ap_drv = to_ap_drv(drv);
 struct ap_device_id *id;





 for (id = ap_drv->ids; id->match_flags; id++) {
  if (is_card_dev(dev) &&
      id->match_flags & AP_DEVICE_ID_MATCH_CARD_TYPE &&
      id->dev_type == to_ap_dev(dev)->device_type)
   return 1;
  if (is_queue_dev(dev) &&
      id->match_flags & AP_DEVICE_ID_MATCH_QUEUE_TYPE &&
      id->dev_type == to_ap_dev(dev)->device_type)
   return 1;
 }
 return 0;
}
