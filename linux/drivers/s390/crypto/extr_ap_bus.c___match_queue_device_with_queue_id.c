
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int qid; } ;


 int AP_QID_QUEUE (int ) ;
 scalar_t__ is_queue_dev (struct device*) ;
 TYPE_1__* to_ap_queue (struct device*) ;

__attribute__((used)) static int __match_queue_device_with_queue_id(struct device *dev, const void *data)
{
 return is_queue_dev(dev)
  && AP_QID_QUEUE(to_ap_queue(dev)->qid) == (int)(long) data;
}
