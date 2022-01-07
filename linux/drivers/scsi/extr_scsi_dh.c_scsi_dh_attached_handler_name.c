
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; TYPE_1__* handler; } ;
struct request_queue {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int name; } ;


 char* kstrdup (int ,int ) ;
 int put_device (int *) ;
 struct scsi_device* scsi_device_from_queue (struct request_queue*) ;

const char *scsi_dh_attached_handler_name(struct request_queue *q, gfp_t gfp)
{
 struct scsi_device *sdev;
 const char *handler_name = ((void*)0);

 sdev = scsi_device_from_queue(q);
 if (!sdev)
  return ((void*)0);

 if (sdev->handler)
  handler_name = kstrdup(sdev->handler->name, gfp);
 put_device(&sdev->sdev_gendev);
 return handler_name;
}
