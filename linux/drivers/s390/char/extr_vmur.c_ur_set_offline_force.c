
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urdev {TYPE_1__* char_device; int ref_count; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int ENODEV ;
 int TRACE (char*,...) ;
 int cdev_del (TYPE_1__*) ;
 int device_destroy (int ,int ) ;
 int refcount_read (int *) ;
 struct urdev* urdev_get_from_cdev (struct ccw_device*) ;
 int urdev_put (struct urdev*) ;
 int vmur_class ;

__attribute__((used)) static int ur_set_offline_force(struct ccw_device *cdev, int force)
{
 struct urdev *urd;
 int rc;

 TRACE("ur_set_offline: cdev=%p\n", cdev);
 urd = urdev_get_from_cdev(cdev);
 if (!urd)

  return -ENODEV;
 if (!urd->char_device) {

  rc = -EBUSY;
  goto fail_urdev_put;
 }
 if (!force && (refcount_read(&urd->ref_count) > 2)) {

  TRACE("ur_set_offline: BUSY\n");
  rc = -EBUSY;
  goto fail_urdev_put;
 }
 device_destroy(vmur_class, urd->char_device->dev);
 cdev_del(urd->char_device);
 urd->char_device = ((void*)0);
 rc = 0;

fail_urdev_put:
 urdev_put(urd);
 return rc;
}
