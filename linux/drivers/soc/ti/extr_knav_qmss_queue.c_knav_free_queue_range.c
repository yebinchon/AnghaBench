
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_range_info {int list; TYPE_1__* ops; } ;
struct knav_device {int dev; } ;
struct TYPE_2__ {int (* free_range ) (struct knav_range_info*) ;} ;


 int devm_kfree (int ,struct knav_range_info*) ;
 int list_del (int *) ;
 int stub1 (struct knav_range_info*) ;

__attribute__((used)) static void knav_free_queue_range(struct knav_device *kdev,
      struct knav_range_info *range)
{
 if (range->ops && range->ops->free_range)
  range->ops->free_range(range);
 list_del(&range->list);
 devm_kfree(kdev->dev, range);
}
