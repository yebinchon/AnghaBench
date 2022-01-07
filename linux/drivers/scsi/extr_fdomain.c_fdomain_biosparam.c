
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int kfree (unsigned char*) ;
 unsigned char* scsi_bios_ptable (struct block_device*) ;
 int sector_div (int,int) ;

__attribute__((used)) static int fdomain_biosparam(struct scsi_device *sdev,
        struct block_device *bdev, sector_t capacity,
        int geom[])
{
 unsigned char *p = scsi_bios_ptable(bdev);

 if (p && p[65] == 0xaa && p[64] == 0x55
     && p[4]) {
  geom[0] = p[5] + 1;
  geom[1] = p[6] & 0x3f;
 } else {
  if (capacity >= 0x7e0000) {
   geom[0] = 255;
   geom[1] = 63;
  } else if (capacity >= 0x200000) {
   geom[0] = 128;
   geom[1] = 63;
  } else {
   geom[0] = 64;
   geom[1] = 32;
  }
 }
 geom[2] = sector_div(capacity, geom[0] * geom[1]);
 kfree(p);

 return 0;
}
