
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_device {int sector_size; } ;



__attribute__((used)) static u8 scu_bg_blk_size(struct scsi_device *sdp)
{
 switch (sdp->sector_size) {
 case 512:
  return 0;
 case 1024:
  return 1;
 case 4096:
  return 3;
 default:
  return 0xff;
 }
}
