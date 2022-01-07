
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int handler; } ;


 int async_schedule (int ,struct ccw_device*) ;
 int virtio_ccw_auto_online ;
 scalar_t__ virtio_ccw_check_autoonline (struct ccw_device*) ;
 int virtio_ccw_int_handler ;

__attribute__((used)) static int virtio_ccw_probe(struct ccw_device *cdev)
{
 cdev->handler = virtio_ccw_int_handler;

 if (virtio_ccw_check_autoonline(cdev))
  async_schedule(virtio_ccw_auto_online, cdev);
 return 0;
}
