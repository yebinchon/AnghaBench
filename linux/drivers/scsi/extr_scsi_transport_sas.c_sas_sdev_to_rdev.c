
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_target; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct sas_end_device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ SAS_END_DEVICE ;
 struct sas_end_device* rphy_to_end_device (struct sas_rphy*) ;
 struct sas_rphy* target_to_rphy (int ) ;

__attribute__((used)) static struct sas_end_device *sas_sdev_to_rdev(struct scsi_device *sdev)
{
 struct sas_rphy *rphy = target_to_rphy(sdev->sdev_target);
 struct sas_end_device *rdev;

 BUG_ON(rphy->identify.device_type != SAS_END_DEVICE);

 rdev = rphy_to_end_device(rphy);
 return rdev;
}
