
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {int dummy; } ;


 int ETIMEDOUT ;
 int HZ ;
 int jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after (unsigned long,int) ;

__attribute__((used)) static int fnic_dev_wait(struct vnic_dev *vdev,
    int (*start)(struct vnic_dev *, int),
    int (*finished)(struct vnic_dev *, int *),
    int arg)
{
 unsigned long time;
 int done;
 int err;
 int count;

 count = 0;

 err = start(vdev, arg);
 if (err)
  return err;







 time = jiffies + (HZ * 2);
 do {
  err = finished(vdev, &done);
  count++;
  if (err)
   return err;
  if (done)
   return 0;
  schedule_timeout_uninterruptible(HZ / 10);
 } while (time_after(time, jiffies) || (count < 3));

 return -ETIMEDOUT;
}
