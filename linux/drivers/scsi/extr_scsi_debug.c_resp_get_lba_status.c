
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int* cmnd; } ;


 int SDEBUG_GET_LBA_STATUS_LEN ;
 int check_device_access_params (struct scsi_cmnd*,int,int,int) ;
 int fill_from_dev_buffer (struct scsi_cmnd*,int*,int) ;
 int get_sdebug_capacity () ;
 int get_unaligned_be32 (int*) ;
 int get_unaligned_be64 (int*) ;
 int map_state (int,int*) ;
 int memset (int*,int ,int) ;
 int put_unaligned_be32 (int,int*) ;
 int put_unaligned_be64 (int,int*) ;
 scalar_t__ scsi_debug_lbp () ;
 int sdebug_capacity ;

__attribute__((used)) static int resp_get_lba_status(struct scsi_cmnd *scp,
          struct sdebug_dev_info *devip)
{
 u8 *cmd = scp->cmnd;
 u64 lba;
 u32 alloc_len, mapped, num;
 u8 arr[SDEBUG_GET_LBA_STATUS_LEN];
 int ret;

 lba = get_unaligned_be64(cmd + 2);
 alloc_len = get_unaligned_be32(cmd + 10);

 if (alloc_len < 24)
  return 0;

 ret = check_device_access_params(scp, lba, 1, 0);
 if (ret)
  return ret;

 if (scsi_debug_lbp())
  mapped = map_state(lba, &num);
 else {
  mapped = 1;

  sdebug_capacity = get_sdebug_capacity();
  if (sdebug_capacity - lba <= 0xffffffff)
   num = sdebug_capacity - lba;
  else
   num = 0xffffffff;
 }

 memset(arr, 0, SDEBUG_GET_LBA_STATUS_LEN);
 put_unaligned_be32(20, arr);
 put_unaligned_be64(lba, arr + 8);
 put_unaligned_be32(num, arr + 16);
 arr[20] = !mapped;

 return fill_from_dev_buffer(scp, arr, SDEBUG_GET_LBA_STATUS_LEN);
}
