
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; TYPE_1__* handler; } ;
struct request_queue {int dummy; } ;
struct TYPE_2__ {int (* set_params ) (struct scsi_device*,char const*) ;} ;


 int SCSI_DH_NOSYS ;
 int put_device (int *) ;
 struct scsi_device* scsi_device_from_queue (struct request_queue*) ;
 int stub1 (struct scsi_device*,char const*) ;

int scsi_dh_set_params(struct request_queue *q, const char *params)
{
 struct scsi_device *sdev;
 int err = -SCSI_DH_NOSYS;

 sdev = scsi_device_from_queue(q);
 if (!sdev)
  return err;

 if (sdev->handler && sdev->handler->set_params)
  err = sdev->handler->set_params(sdev, params);
 put_device(&sdev->sdev_gendev);
 return err;
}
