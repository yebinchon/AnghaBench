
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;


 int SDEBUG_READCAP16_ARR_SZ ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int ) ;
 int get_sdebug_capacity () ;
 int get_unaligned_be32 (unsigned char*) ;
 scalar_t__ have_dif_prot ;
 int memset (unsigned char*,int ,int) ;
 int min (int,int) ;
 int put_unaligned_be32 (int ,unsigned char*) ;
 int put_unaligned_be64 (int ,unsigned char*) ;
 scalar_t__ scsi_debug_lbp () ;
 int sdebug_capacity ;
 int sdebug_dif ;
 int sdebug_lbprz ;
 int sdebug_lowest_aligned ;
 int sdebug_physblk_exp ;
 int sdebug_sector_size ;

__attribute__((used)) static int resp_readcap16(struct scsi_cmnd *scp,
     struct sdebug_dev_info *devip)
{
 unsigned char *cmd = scp->cmnd;
 unsigned char arr[SDEBUG_READCAP16_ARR_SZ];
 int alloc_len;

 alloc_len = get_unaligned_be32(cmd + 10);

 sdebug_capacity = get_sdebug_capacity();
 memset(arr, 0, SDEBUG_READCAP16_ARR_SZ);
 put_unaligned_be64((u64)(sdebug_capacity - 1), arr + 0);
 put_unaligned_be32(sdebug_sector_size, arr + 8);
 arr[13] = sdebug_physblk_exp & 0xf;
 arr[14] = (sdebug_lowest_aligned >> 8) & 0x3f;

 if (scsi_debug_lbp()) {
  arr[14] |= 0x80;




  if (sdebug_lbprz & 1)
   arr[14] |= 0x40;
 }

 arr[15] = sdebug_lowest_aligned & 0xff;

 if (have_dif_prot) {
  arr[12] = (sdebug_dif - 1) << 1;
  arr[12] |= 1;
 }

 return fill_from_dev_buffer(scp, arr,
        min(alloc_len, SDEBUG_READCAP16_ARR_SZ));
}
