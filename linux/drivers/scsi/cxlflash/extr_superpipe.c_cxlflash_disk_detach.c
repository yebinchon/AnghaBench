
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct dk_cxlflash_detach {int dummy; } ;


 int _cxlflash_disk_detach (struct scsi_device*,int *,struct dk_cxlflash_detach*) ;

__attribute__((used)) static int cxlflash_disk_detach(struct scsi_device *sdev,
    struct dk_cxlflash_detach *detach)
{
 return _cxlflash_disk_detach(sdev, ((void*)0), detach);
}
