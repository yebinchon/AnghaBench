
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fsg_lun {scalar_t__ num_sectors; unsigned int blkbits; unsigned int sense_data_info; int info_valid; void* sense_data; int blksize; int filp; scalar_t__ file_length; } ;
struct fsg_common {int* cmnd; scalar_t__ data_size_from_cmnd; unsigned int residue; struct fsg_buffhd* next_buffhd_to_fill; struct fsg_lun* curlun; } ;
struct fsg_buffhd {struct fsg_buffhd* next; TYPE_1__* inreq; void* state; int buf; } ;
typedef unsigned int ssize_t ;
typedef unsigned int loff_t ;
struct TYPE_2__ {unsigned int length; scalar_t__ zero; } ;


 void* BUF_STATE_FULL ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 scalar_t__ FSG_BUFLEN ;
 int LDBG (struct fsg_lun*,char*,int,...) ;
 int READ_6 ;
 void* SS_INVALID_FIELD_IN_CDB ;
 void* SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE ;
 void* SS_UNRECOVERED_READ_ERROR ;
 int VLDBG (struct fsg_lun*,char*,unsigned int,unsigned long long,int) ;
 int current ;
 scalar_t__ get_unaligned_be24 (int*) ;
 scalar_t__ get_unaligned_be32 (int*) ;
 unsigned int kernel_read (int ,int ,unsigned int,unsigned int*) ;
 unsigned int min (unsigned int,scalar_t__) ;
 unsigned int round_down (unsigned int,int ) ;
 scalar_t__ signal_pending (int ) ;
 int sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int start_in_transfer (struct fsg_common*,struct fsg_buffhd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_read(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 u32 lba;
 struct fsg_buffhd *bh;
 int rc;
 u32 amount_left;
 loff_t file_offset, file_offset_tmp;
 unsigned int amount;
 ssize_t nread;





 if (common->cmnd[0] == READ_6)
  lba = get_unaligned_be24(&common->cmnd[1]);
 else {
  lba = get_unaligned_be32(&common->cmnd[2]);






  if ((common->cmnd[1] & ~0x18) != 0) {
   curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
   return -EINVAL;
  }
 }
 if (lba >= curlun->num_sectors) {
  curlun->sense_data = SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
  return -EINVAL;
 }
 file_offset = ((loff_t) lba) << curlun->blkbits;


 amount_left = common->data_size_from_cmnd;
 if (unlikely(amount_left == 0))
  return -EIO;

 for (;;) {






  amount = min(amount_left, FSG_BUFLEN);
  amount = min((loff_t)amount,
        curlun->file_length - file_offset);


  bh = common->next_buffhd_to_fill;
  rc = sleep_thread(common, 0, bh);
  if (rc)
   return rc;





  if (amount == 0) {
   curlun->sense_data =
     SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
   curlun->sense_data_info =
     file_offset >> curlun->blkbits;
   curlun->info_valid = 1;
   bh->inreq->length = 0;
   bh->state = BUF_STATE_FULL;
   break;
  }


  file_offset_tmp = file_offset;
  nread = kernel_read(curlun->filp, bh->buf, amount,
    &file_offset_tmp);
  VLDBG(curlun, "file read %u @ %llu -> %d\n", amount,
        (unsigned long long)file_offset, (int)nread);
  if (signal_pending(current))
   return -EINTR;

  if (nread < 0) {
   LDBG(curlun, "error in file read: %d\n", (int)nread);
   nread = 0;
  } else if (nread < amount) {
   LDBG(curlun, "partial file read: %d/%u\n",
        (int)nread, amount);
   nread = round_down(nread, curlun->blksize);
  }
  file_offset += nread;
  amount_left -= nread;
  common->residue -= nread;






  bh->inreq->length = nread;
  bh->state = BUF_STATE_FULL;


  if (nread < amount) {
   curlun->sense_data = SS_UNRECOVERED_READ_ERROR;
   curlun->sense_data_info =
     file_offset >> curlun->blkbits;
   curlun->info_valid = 1;
   break;
  }

  if (amount_left == 0)
   break;


  bh->inreq->zero = 0;
  if (!start_in_transfer(common, bh))

   return -EIO;
  common->next_buffhd_to_fill = bh->next;
 }

 return -EIO;
}
