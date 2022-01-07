
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visordisk_info {int dummy; } ;
struct scsi_device {struct visordisk_info* hostdata; } ;


 int kfree (struct visordisk_info*) ;

__attribute__((used)) static void visorhba_slave_destroy(struct scsi_device *scsidev)
{



 struct visordisk_info *vdisk;

 vdisk = scsidev->hostdata;
 scsidev->hostdata = ((void*)0);
 kfree(vdisk);
}
