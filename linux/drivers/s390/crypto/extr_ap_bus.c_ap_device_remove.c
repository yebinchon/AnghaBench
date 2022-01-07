
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct ap_driver {int (* remove ) (struct ap_device*) ;} ;
struct ap_device {struct ap_driver* drv; } ;
struct TYPE_6__ {int list; } ;
struct TYPE_5__ {int list; } ;


 int ap_list_lock ;
 int ap_queue_prepare_remove (TYPE_1__*) ;
 int ap_queue_remove (TYPE_1__*) ;
 scalar_t__ is_card_dev (struct device*) ;
 scalar_t__ is_queue_dev (struct device*) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ap_device*) ;
 TYPE_2__* to_ap_card (struct device*) ;
 struct ap_device* to_ap_dev (struct device*) ;
 TYPE_1__* to_ap_queue (struct device*) ;

__attribute__((used)) static int ap_device_remove(struct device *dev)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 struct ap_driver *ap_drv = ap_dev->drv;


 if (is_queue_dev(dev))
  ap_queue_prepare_remove(to_ap_queue(dev));


 if (ap_drv->remove)
  ap_drv->remove(ap_dev);


 if (is_queue_dev(dev))
  ap_queue_remove(to_ap_queue(dev));


 spin_lock_bh(&ap_list_lock);
 if (is_card_dev(dev))
  list_del_init(&to_ap_card(dev)->list);
 else
  list_del_init(&to_ap_queue(dev)->list);
 spin_unlock_bh(&ap_list_lock);

 return 0;
}
