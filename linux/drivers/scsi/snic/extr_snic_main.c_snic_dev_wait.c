
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

__attribute__((used)) static int
snic_dev_wait(struct vnic_dev *vdev,
  int (*start)(struct vnic_dev *, int),
  int (*finished)(struct vnic_dev *, int *),
  int arg)
{
 unsigned long time;
 int ret, done;
 int retry_cnt = 0;

 ret = start(vdev, arg);
 if (ret)
  return ret;
 time = jiffies + (HZ * 2);
 do {
  ret = finished(vdev, &done);
  if (ret)
   return ret;

  if (done)
   return 0;
  schedule_timeout_uninterruptible(HZ/10);
  ++retry_cnt;
 } while (time_after(time, jiffies) || (retry_cnt < 3));

 return -ETIMEDOUT;
}
