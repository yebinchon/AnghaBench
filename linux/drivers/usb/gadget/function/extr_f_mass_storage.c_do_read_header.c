
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct fsg_lun {scalar_t__ num_sectors; int sense_data; } ;
struct fsg_common {int* cmnd; struct fsg_lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;


 int EINVAL ;
 int SS_INVALID_FIELD_IN_CDB ;
 int SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE ;
 scalar_t__ get_unaligned_be32 (int*) ;
 int memset (int*,int ,int) ;
 int store_cdrom_address (int*,int,scalar_t__) ;

__attribute__((used)) static int do_read_header(struct fsg_common *common, struct fsg_buffhd *bh)
{
 struct fsg_lun *curlun = common->curlun;
 int msf = common->cmnd[1] & 0x02;
 u32 lba = get_unaligned_be32(&common->cmnd[2]);
 u8 *buf = (u8 *)bh->buf;

 if (common->cmnd[1] & ~0x02) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }
 if (lba >= curlun->num_sectors) {
  curlun->sense_data = SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
  return -EINVAL;
 }

 memset(buf, 0, 8);
 buf[0] = 0x01;
 store_cdrom_address(&buf[4], msf, lba);
 return 8;
}
