
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int ENODEV ;
 int ccwreq_stop (struct ccw_device*,int ) ;

void ccw_request_notoper(struct ccw_device *cdev)
{
 ccwreq_stop(cdev, -ENODEV);
}
