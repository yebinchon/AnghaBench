
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; TYPE_3__* sdev_target; } ;
struct TYPE_4__ {int parent; } ;
struct enclosure_device {TYPE_1__ edev; } ;
struct efd {int * dev; scalar_t__ addr; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int enclosure_for_each_device (int ,struct efd*) ;
 scalar_t__ sas_get_address (struct scsi_device*) ;
 scalar_t__ scsi_is_sas_rphy (int ) ;
 int ses_enclosure_data_process (struct enclosure_device*,struct scsi_device*,int ) ;
 int ses_enclosure_find_by_addr ;
 struct scsi_device* to_scsi_device (int ) ;

__attribute__((used)) static void ses_match_to_enclosure(struct enclosure_device *edev,
       struct scsi_device *sdev,
       int refresh)
{
 struct scsi_device *edev_sdev = to_scsi_device(edev->edev.parent);
 struct efd efd = {
  .addr = 0,
 };

 if (refresh)
  ses_enclosure_data_process(edev, edev_sdev, 0);

 if (scsi_is_sas_rphy(sdev->sdev_target->dev.parent))
  efd.addr = sas_get_address(sdev);

 if (efd.addr) {
  efd.dev = &sdev->sdev_gendev;

  enclosure_for_each_device(ses_enclosure_find_by_addr, &efd);
 }
}
