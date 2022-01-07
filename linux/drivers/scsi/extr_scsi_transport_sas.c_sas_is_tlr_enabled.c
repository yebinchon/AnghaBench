
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct sas_end_device {unsigned int tlr_enabled; } ;


 struct sas_end_device* sas_sdev_to_rdev (struct scsi_device*) ;

unsigned int sas_is_tlr_enabled(struct scsi_device *sdev)
{
 struct sas_end_device *rdev = sas_sdev_to_rdev(sdev);
 return rdev->tlr_enabled;
}
