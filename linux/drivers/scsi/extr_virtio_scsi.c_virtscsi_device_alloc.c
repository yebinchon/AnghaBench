
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_bflags; } ;


 int BLIST_TRY_VPD_PAGES ;

__attribute__((used)) static int virtscsi_device_alloc(struct scsi_device *sdevice)
{
 sdevice->sdev_bflags = BLIST_TRY_VPD_PAGES;

 return 0;
}
