
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;
struct ccw_dev_id {size_t ssid; int devno; } ;


 int ccw_device_get_id (struct ccw_device*,struct ccw_dev_id*) ;
 int * devs_no_auto ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int virtio_ccw_check_autoonline(struct ccw_device *cdev)
{
 struct ccw_dev_id id;

 ccw_device_get_id(cdev, &id);
 if (test_bit(id.devno, devs_no_auto[id.ssid]))
  return 0;
 return 1;
}
