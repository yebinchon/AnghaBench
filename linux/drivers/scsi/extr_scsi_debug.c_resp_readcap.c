
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int dummy; } ;


 int SDEBUG_READCAP_ARR_SZ ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int get_sdebug_capacity () ;
 int memset (unsigned char*,int ,int) ;
 int put_unaligned_be16 (int ,unsigned char*) ;
 int put_unaligned_be32 (int,unsigned char*) ;
 int sdebug_capacity ;
 int sdebug_sector_size ;

__attribute__((used)) static int resp_readcap(struct scsi_cmnd *scp,
   struct sdebug_dev_info *devip)
{
 unsigned char arr[SDEBUG_READCAP_ARR_SZ];
 unsigned int capac;


 sdebug_capacity = get_sdebug_capacity();
 memset(arr, 0, SDEBUG_READCAP_ARR_SZ);
 if (sdebug_capacity < 0xffffffff) {
  capac = (unsigned int)sdebug_capacity - 1;
  put_unaligned_be32(capac, arr + 0);
 } else
  put_unaligned_be32(0xffffffff, arr + 0);
 put_unaligned_be16(sdebug_sector_size, arr + 6);
 return fill_from_dev_buffer(scp, arr, SDEBUG_READCAP_ARR_SZ);
}
