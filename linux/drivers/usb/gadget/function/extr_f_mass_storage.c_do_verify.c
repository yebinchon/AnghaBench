
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fsg_lun {scalar_t__ num_sectors; scalar_t__ blkbits; unsigned int sense_data_info; int info_valid; void* sense_data; int blksize; int filp; scalar_t__ file_length; } ;
struct fsg_common {int* cmnd; struct fsg_buffhd* next_buffhd_to_fill; struct fsg_lun* curlun; } ;
struct fsg_buffhd {int buf; } ;
typedef unsigned int ssize_t ;
typedef unsigned int loff_t ;


 int EINTR ;
 int EINVAL ;
 int EIO ;
 scalar_t__ FSG_BUFLEN ;
 int LDBG (struct fsg_lun*,char*,int,...) ;
 void* SS_INVALID_FIELD_IN_CDB ;
 void* SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE ;
 void* SS_UNRECOVERED_READ_ERROR ;
 int VLDBG (struct fsg_lun*,char*,unsigned int,unsigned long long,int) ;
 int current ;
 int fsg_lun_fsync_sub (struct fsg_lun*) ;
 scalar_t__ get_unaligned_be16 (int*) ;
 scalar_t__ get_unaligned_be32 (int*) ;
 int invalidate_sub (struct fsg_lun*) ;
 unsigned int kernel_read (int ,int ,unsigned int,unsigned int*) ;
 unsigned int min (unsigned int,scalar_t__) ;
 unsigned int round_down (unsigned int,int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_verify(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 u32 lba;
 u32 verification_length;
 struct fsg_buffhd *bh = common->next_buffhd_to_fill;
 loff_t file_offset, file_offset_tmp;
 u32 amount_left;
 unsigned int amount;
 ssize_t nread;





 lba = get_unaligned_be32(&common->cmnd[2]);
 if (lba >= curlun->num_sectors) {
  curlun->sense_data = SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
  return -EINVAL;
 }





 if (common->cmnd[1] & ~0x10) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }

 verification_length = get_unaligned_be16(&common->cmnd[7]);
 if (unlikely(verification_length == 0))
  return -EIO;


 amount_left = verification_length << curlun->blkbits;
 file_offset = ((loff_t) lba) << curlun->blkbits;


 fsg_lun_fsync_sub(curlun);
 if (signal_pending(current))
  return -EINTR;

 invalidate_sub(curlun);
 if (signal_pending(current))
  return -EINTR;


 while (amount_left > 0) {






  amount = min(amount_left, FSG_BUFLEN);
  amount = min((loff_t)amount,
        curlun->file_length - file_offset);
  if (amount == 0) {
   curlun->sense_data =
     SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
   curlun->sense_data_info =
    file_offset >> curlun->blkbits;
   curlun->info_valid = 1;
   break;
  }


  file_offset_tmp = file_offset;
  nread = kernel_read(curlun->filp, bh->buf, amount,
    &file_offset_tmp);
  VLDBG(curlun, "file read %u @ %llu -> %d\n", amount,
    (unsigned long long) file_offset,
    (int) nread);
  if (signal_pending(current))
   return -EINTR;

  if (nread < 0) {
   LDBG(curlun, "error in file verify: %d\n", (int)nread);
   nread = 0;
  } else if (nread < amount) {
   LDBG(curlun, "partial file verify: %d/%u\n",
        (int)nread, amount);
   nread = round_down(nread, curlun->blksize);
  }
  if (nread == 0) {
   curlun->sense_data = SS_UNRECOVERED_READ_ERROR;
   curlun->sense_data_info =
    file_offset >> curlun->blkbits;
   curlun->info_valid = 1;
   break;
  }
  file_offset += nread;
  amount_left -= nread;
 }
 return 0;
}
