
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int tagged_supported; } ;
struct TYPE_2__ {int ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;


 int __ata_change_queue_depth (int ,struct scsi_device*,int) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;
 struct domain_device* sdev_to_domain_dev (struct scsi_device*) ;

int sas_change_queue_depth(struct scsi_device *sdev, int depth)
{
 struct domain_device *dev = sdev_to_domain_dev(sdev);

 if (dev_is_sata(dev))
  return __ata_change_queue_depth(dev->sata_dev.ap, sdev, depth);

 if (!sdev->tagged_supported)
  depth = 1;
 return scsi_change_queue_depth(sdev, depth);
}
