
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct domain_device {int dummy; } ;


 int dev_is_sata (struct domain_device*) ;
 int sas_change_queue_depth (struct scsi_device*,int) ;
 int sas_slave_configure (struct scsi_device*) ;
 struct domain_device* sdev_to_domain_dev (struct scsi_device*) ;

int hisi_sas_slave_configure(struct scsi_device *sdev)
{
 struct domain_device *dev = sdev_to_domain_dev(sdev);
 int ret = sas_slave_configure(sdev);

 if (ret)
  return ret;
 if (!dev_is_sata(dev))
  sas_change_queue_depth(sdev, 64);

 return 0;
}
