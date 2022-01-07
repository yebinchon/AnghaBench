
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int* cmnd; } ;


 int SDEB_IN_CDB ;
 int check_condition_result ;
 scalar_t__ get_unaligned_be16 (int*) ;
 int get_unaligned_be32 (int*) ;
 int mk_sense_invalid_fld (struct scsi_cmnd*,int ,int,int) ;
 int resp_write_same (struct scsi_cmnd*,int ,scalar_t__,int ,int,int) ;
 scalar_t__ sdebug_lbpws10 ;
 scalar_t__ sdebug_write_same_length ;

__attribute__((used)) static int resp_write_same_10(struct scsi_cmnd *scp,
         struct sdebug_dev_info *devip)
{
 u8 *cmd = scp->cmnd;
 u32 lba;
 u16 num;
 u32 ei_lba = 0;
 bool unmap = 0;

 if (cmd[1] & 0x8) {
  if (sdebug_lbpws10 == 0) {
   mk_sense_invalid_fld(scp, SDEB_IN_CDB, 1, 3);
   return check_condition_result;
  } else
   unmap = 1;
 }
 lba = get_unaligned_be32(cmd + 2);
 num = get_unaligned_be16(cmd + 7);
 if (num > sdebug_write_same_length) {
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 7, -1);
  return check_condition_result;
 }
 return resp_write_same(scp, lba, num, ei_lba, unmap, 0);
}
