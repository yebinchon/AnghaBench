
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct dk_cxlflash_resize {int dummy; } ;


 int _cxlflash_vlun_resize (struct scsi_device*,int *,struct dk_cxlflash_resize*) ;

int cxlflash_vlun_resize(struct scsi_device *sdev,
    struct dk_cxlflash_resize *resize)
{
 return _cxlflash_vlun_resize(sdev, ((void*)0), resize);
}
