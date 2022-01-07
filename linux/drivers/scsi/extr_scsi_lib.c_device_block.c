
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;


 int WARN_ONCE (int,char*,int ,int) ;
 int dev_name (int *) ;
 int scsi_internal_device_block (struct scsi_device*) ;

__attribute__((used)) static void
device_block(struct scsi_device *sdev, void *data)
{
 int ret;

 ret = scsi_internal_device_block(sdev);

 WARN_ONCE(ret, "scsi_internal_device_block(%s) failed: ret = %d\n",
    dev_name(&sdev->sdev_gendev), ret);
}
