
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int scsi_device_put (struct scsi_device*) ;

__attribute__((used)) static void aac_put_safw_scsi_device(struct scsi_device *sdev)
{
 if (sdev)
  scsi_device_put(sdev);
}
