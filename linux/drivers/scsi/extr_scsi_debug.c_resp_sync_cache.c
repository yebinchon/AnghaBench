
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int* cmnd; } ;


 int ILLEGAL_REQUEST ;
 int LBA_OUT_OF_RANGE ;
 int SDEG_RES_IMMED_MASK ;
 int SYNCHRONIZE_CACHE ;
 int check_condition_result ;
 scalar_t__ get_unaligned_be16 (int*) ;
 scalar_t__ get_unaligned_be32 (int*) ;
 scalar_t__ get_unaligned_be64 (int*) ;
 int mk_sense_buffer (struct scsi_cmnd*,int ,int ,int ) ;
 scalar_t__ sdebug_capacity ;
 int write_since_sync ;

__attribute__((used)) static int resp_sync_cache(struct scsi_cmnd *scp,
      struct sdebug_dev_info *devip)
{
 int res = 0;
 u64 lba;
 u32 num_blocks;
 u8 *cmd = scp->cmnd;

 if (cmd[0] == SYNCHRONIZE_CACHE) {
  lba = get_unaligned_be32(cmd + 2);
  num_blocks = get_unaligned_be16(cmd + 7);
 } else {
  lba = get_unaligned_be64(cmd + 2);
  num_blocks = get_unaligned_be32(cmd + 10);
 }
 if (lba + num_blocks > sdebug_capacity) {
  mk_sense_buffer(scp, ILLEGAL_REQUEST, LBA_OUT_OF_RANGE, 0);
  return check_condition_result;
 }
 if (!write_since_sync || cmd[1] & 0x2)
  res = SDEG_RES_IMMED_MASK;
 else
  write_since_sync = 0;
 return res;
}
