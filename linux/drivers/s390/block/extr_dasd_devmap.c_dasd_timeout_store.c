
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {unsigned long blk_timeout; TYPE_1__* block; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {struct request_queue* request_queue; } ;


 size_t EINVAL ;
 size_t ENODEV ;
 unsigned long HZ ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 unsigned long UINT_MAX ;
 int blk_queue_rq_timeout (struct request_queue*,unsigned long) ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_timeout_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct dasd_device *device;
 struct request_queue *q;
 unsigned long val;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device) || !device->block)
  return -ENODEV;

 if ((kstrtoul(buf, 10, &val) != 0) ||
     val > UINT_MAX / HZ) {
  dasd_put_device(device);
  return -EINVAL;
 }
 q = device->block->request_queue;
 if (!q) {
  dasd_put_device(device);
  return -ENODEV;
 }

 device->blk_timeout = val;

 blk_queue_rq_timeout(q, device->blk_timeout * HZ);

 dasd_put_device(device);
 return count;
}
