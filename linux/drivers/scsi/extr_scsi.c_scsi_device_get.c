
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ sdev_state; int sdev_gendev; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int module; } ;


 int ENXIO ;
 scalar_t__ SDEV_CANCEL ;
 scalar_t__ SDEV_DEL ;
 int get_device (int *) ;
 int put_device (int *) ;
 int try_module_get (int ) ;

int scsi_device_get(struct scsi_device *sdev)
{
 if (sdev->sdev_state == SDEV_DEL || sdev->sdev_state == SDEV_CANCEL)
  goto fail;
 if (!get_device(&sdev->sdev_gendev))
  goto fail;
 if (!try_module_get(sdev->host->hostt->module))
  goto fail_put_device;
 return 0;

fail_put_device:
 put_device(&sdev->sdev_gendev);
fail:
 return -ENXIO;
}
