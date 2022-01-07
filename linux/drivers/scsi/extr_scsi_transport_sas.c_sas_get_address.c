
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct scsi_device {int dummy; } ;
struct TYPE_3__ {int sas_address; } ;
struct TYPE_4__ {TYPE_1__ identify; } ;
struct sas_end_device {TYPE_2__ rphy; } ;


 struct sas_end_device* sas_sdev_to_rdev (struct scsi_device*) ;

u64 sas_get_address(struct scsi_device *sdev)
{
 struct sas_end_device *rdev = sas_sdev_to_rdev(sdev);

 return rdev->rphy.identify.sas_address;
}
