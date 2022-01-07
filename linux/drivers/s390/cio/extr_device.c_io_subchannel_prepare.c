
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct ccw_device {int dev; } ;


 int EAGAIN ;
 int device_is_registered (int *) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;

__attribute__((used)) static int io_subchannel_prepare(struct subchannel *sch)
{
 struct ccw_device *cdev;




 cdev = sch_get_cdev(sch);
 if (cdev && !device_is_registered(&cdev->dev))
  return -EAGAIN;
 return 0;
}
