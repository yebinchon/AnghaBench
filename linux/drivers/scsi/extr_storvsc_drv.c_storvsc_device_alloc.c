
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_bflags; } ;


 int BLIST_REPORTLUN2 ;
 int BLIST_TRY_VPD_PAGES ;

__attribute__((used)) static int storvsc_device_alloc(struct scsi_device *sdevice)
{
 sdevice->sdev_bflags = BLIST_REPORTLUN2 | BLIST_TRY_VPD_PAGES;

 return 0;
}
