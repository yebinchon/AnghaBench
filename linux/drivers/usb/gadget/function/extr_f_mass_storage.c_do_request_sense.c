
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct fsg_lun {scalar_t__ unit_attention_data; scalar_t__ sense_data; scalar_t__ sense_data_info; int info_valid; } ;
struct fsg_common {int bad_lun_okay; struct fsg_lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;


 int ASC (scalar_t__) ;
 int ASCQ (scalar_t__) ;
 int SK (scalar_t__) ;
 scalar_t__ SS_LOGICAL_UNIT_NOT_SUPPORTED ;
 scalar_t__ SS_NO_SENSE ;
 int memset (int*,int ,int) ;
 int put_unaligned_be32 (scalar_t__,int*) ;

__attribute__((used)) static int do_request_sense(struct fsg_common *common, struct fsg_buffhd *bh)
{
 struct fsg_lun *curlun = common->curlun;
 u8 *buf = (u8 *) bh->buf;
 u32 sd, sdinfo;
 int valid;
 if (!curlun) {
  common->bad_lun_okay = 1;
  sd = SS_LOGICAL_UNIT_NOT_SUPPORTED;
  sdinfo = 0;
  valid = 0;
 } else {
  sd = curlun->sense_data;
  sdinfo = curlun->sense_data_info;
  valid = curlun->info_valid << 7;
  curlun->sense_data = SS_NO_SENSE;
  curlun->sense_data_info = 0;
  curlun->info_valid = 0;
 }

 memset(buf, 0, 18);
 buf[0] = valid | 0x70;
 buf[2] = SK(sd);
 put_unaligned_be32(sdinfo, &buf[3]);
 buf[7] = 18 - 8;
 buf[12] = ASC(sd);
 buf[13] = ASCQ(sd);
 return 18;
}
