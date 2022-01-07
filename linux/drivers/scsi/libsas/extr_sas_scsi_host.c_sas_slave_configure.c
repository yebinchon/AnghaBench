
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {int allow_restart; int lun; scalar_t__ tagged_supported; } ;
struct TYPE_6__ {int ap; } ;
struct domain_device {int sas_addr; TYPE_3__ sata_dev; TYPE_2__* rphy; } ;
struct TYPE_4__ {scalar_t__ device_type; } ;
struct TYPE_5__ {TYPE_1__ identify; } ;


 int BUG_ON (int) ;
 int SAS_ADDR (int ) ;
 int SAS_DEF_QD ;
 scalar_t__ SAS_END_DEVICE ;
 int ata_sas_slave_configure (struct scsi_device*,int ) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int pr_notice (char*,int ,int ) ;
 int sas_read_port_mode_page (struct scsi_device*) ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;
 struct domain_device* sdev_to_domain_dev (struct scsi_device*) ;

int sas_slave_configure(struct scsi_device *scsi_dev)
{
 struct domain_device *dev = sdev_to_domain_dev(scsi_dev);

 BUG_ON(dev->rphy->identify.device_type != SAS_END_DEVICE);

 if (dev_is_sata(dev)) {
  ata_sas_slave_configure(scsi_dev, dev->sata_dev.ap);
  return 0;
 }

 sas_read_port_mode_page(scsi_dev);

 if (scsi_dev->tagged_supported) {
  scsi_change_queue_depth(scsi_dev, SAS_DEF_QD);
 } else {
  pr_notice("device %llx, LUN %llx doesn't support TCQ\n",
     SAS_ADDR(dev->sas_addr), scsi_dev->lun);
  scsi_change_queue_depth(scsi_dev, 1);
 }

 scsi_dev->allow_restart = 1;

 return 0;
}
