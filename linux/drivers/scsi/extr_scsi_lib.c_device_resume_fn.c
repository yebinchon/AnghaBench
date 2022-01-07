
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int scsi_device_resume (struct scsi_device*) ;

__attribute__((used)) static void
device_resume_fn(struct scsi_device *sdev, void *data)
{
 scsi_device_resume(sdev);
}
