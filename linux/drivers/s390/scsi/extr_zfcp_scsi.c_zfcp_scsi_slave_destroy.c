
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_scsi_dev {TYPE_1__* port; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int put_device (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_lun_shutdown_wait (struct scsi_device*,char*) ;

__attribute__((used)) static void zfcp_scsi_slave_destroy(struct scsi_device *sdev)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);


 if (!zfcp_sdev->port)
  return;

 zfcp_erp_lun_shutdown_wait(sdev, "scssd_1");
 put_device(&zfcp_sdev->port->dev);
}
