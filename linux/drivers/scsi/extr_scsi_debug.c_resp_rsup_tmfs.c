
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int* cmnd; } ;
typedef int arr ;


 int SDEB_IN_CDB ;
 int check_condition_result ;
 int fill_from_dev_buffer (struct scsi_cmnd*,int*,int) ;
 int get_unaligned_be32 (int*) ;
 int memset (int*,int ,int) ;
 int mk_sense_invalid_fld (struct scsi_cmnd*,int ,int,int) ;

__attribute__((used)) static int resp_rsup_tmfs(struct scsi_cmnd *scp,
     struct sdebug_dev_info *devip)
{
 bool repd;
 u32 alloc_len, len;
 u8 arr[16];
 u8 *cmd = scp->cmnd;

 memset(arr, 0, sizeof(arr));
 repd = !!(cmd[2] & 0x80);
 alloc_len = get_unaligned_be32(cmd + 6);
 if (alloc_len < 4) {
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 6, -1);
  return check_condition_result;
 }
 arr[0] = 0xc8;
 arr[1] = 0x1;
 if (repd) {
  arr[3] = 0xc;
  len = 16;
 } else
  len = 4;

 len = (len < alloc_len) ? len : alloc_len;
 return fill_from_dev_buffer(scp, arr, len);
}
