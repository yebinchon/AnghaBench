
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
struct ccw_dev_id {int dummy; } ;
struct TYPE_2__ {int dev_id; } ;


 int ccw_dev_id_is_equal (int *,struct ccw_dev_id*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static int match_dev_id(struct device *dev, const void *data)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct ccw_dev_id *dev_id = (void *)data;

 return ccw_dev_id_is_equal(&cdev->private->dev_id, dev_id);
}
