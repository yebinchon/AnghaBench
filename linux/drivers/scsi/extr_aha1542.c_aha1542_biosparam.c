
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct block_device {int dummy; } ;
struct aha1542_hostdata {scalar_t__ bios_translation; } ;
typedef int sector_t ;


 scalar_t__ BIOS_TRANSLATION_25563 ;
 int sector_div (int,int) ;
 struct aha1542_hostdata* shost_priv (int ) ;

__attribute__((used)) static int aha1542_biosparam(struct scsi_device *sdev,
  struct block_device *bdev, sector_t capacity, int geom[])
{
 struct aha1542_hostdata *aha1542 = shost_priv(sdev->host);

 if (capacity >= 0x200000 &&
   aha1542->bios_translation == BIOS_TRANSLATION_25563) {

  geom[0] = 255;
  geom[1] = 63;
 } else {
  geom[0] = 64;
  geom[1] = 32;
 }
 geom[2] = sector_div(capacity, geom[0] * geom[1]);

 return 0;
}
