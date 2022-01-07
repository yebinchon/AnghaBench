
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct dk_cxlflash_release {int dummy; } ;


 int _cxlflash_disk_release (struct scsi_device*,int *,struct dk_cxlflash_release*) ;

int cxlflash_disk_release(struct scsi_device *sdev,
     struct dk_cxlflash_release *release)
{
 return _cxlflash_disk_release(sdev, ((void*)0), release);
}
