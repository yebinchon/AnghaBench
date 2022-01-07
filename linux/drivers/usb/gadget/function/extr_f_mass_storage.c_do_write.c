
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fsg_lun {scalar_t__ num_sectors; unsigned int blkbits; unsigned int file_length; unsigned int sense_data_info; int info_valid; void* sense_data; int blksize; TYPE_2__* filp; int nofua; scalar_t__ ro; } ;
struct fsg_common {int* cmnd; scalar_t__ data_size_from_cmnd; unsigned int usb_amount_left; unsigned int residue; int short_packet_received; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; struct fsg_lun* curlun; } ;
struct fsg_buffhd {scalar_t__ state; unsigned int bulk_out_intended_length; TYPE_1__* outreq; int buf; struct fsg_buffhd* next; } ;
typedef unsigned int ssize_t ;
typedef unsigned int loff_t ;
struct TYPE_4__ {int f_lock; int f_flags; } ;
struct TYPE_3__ {scalar_t__ status; unsigned int actual; } ;


 scalar_t__ BUF_STATE_EMPTY ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 unsigned int FSG_BUFLEN ;
 int LDBG (struct fsg_lun*,char*,int,...) ;
 int LERROR (struct fsg_lun*,char*,unsigned int,unsigned long long,unsigned long long) ;
 int O_SYNC ;
 void* SS_COMMUNICATION_FAILURE ;
 void* SS_INVALID_FIELD_IN_CDB ;
 void* SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE ;
 void* SS_WRITE_ERROR ;
 void* SS_WRITE_PROTECTED ;
 int VLDBG (struct fsg_lun*,char*,unsigned int,unsigned long long,int) ;
 int WRITE_6 ;
 int current ;
 scalar_t__ get_unaligned_be24 (int*) ;
 scalar_t__ get_unaligned_be32 (int*) ;
 unsigned int kernel_write (TYPE_2__*,int ,unsigned int,unsigned int*) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int round_down (unsigned int,int ) ;
 int set_bulk_out_req_length (struct fsg_common*,struct fsg_buffhd*,unsigned int) ;
 scalar_t__ signal_pending (int ) ;
 int sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_out_transfer (struct fsg_common*,struct fsg_buffhd*) ;

__attribute__((used)) static int do_write(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 u32 lba;
 struct fsg_buffhd *bh;
 int get_some_more;
 u32 amount_left_to_req, amount_left_to_write;
 loff_t usb_offset, file_offset, file_offset_tmp;
 unsigned int amount;
 ssize_t nwritten;
 int rc;

 if (curlun->ro) {
  curlun->sense_data = SS_WRITE_PROTECTED;
  return -EINVAL;
 }
 spin_lock(&curlun->filp->f_lock);
 curlun->filp->f_flags &= ~O_SYNC;
 spin_unlock(&curlun->filp->f_lock);





 if (common->cmnd[0] == WRITE_6)
  lba = get_unaligned_be24(&common->cmnd[1]);
 else {
  lba = get_unaligned_be32(&common->cmnd[2]);







  if (common->cmnd[1] & ~0x18) {
   curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
   return -EINVAL;
  }
  if (!curlun->nofua && (common->cmnd[1] & 0x08)) {
   spin_lock(&curlun->filp->f_lock);
   curlun->filp->f_flags |= O_SYNC;
   spin_unlock(&curlun->filp->f_lock);
  }
 }
 if (lba >= curlun->num_sectors) {
  curlun->sense_data = SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
  return -EINVAL;
 }


 get_some_more = 1;
 file_offset = usb_offset = ((loff_t) lba) << curlun->blkbits;
 amount_left_to_req = common->data_size_from_cmnd;
 amount_left_to_write = common->data_size_from_cmnd;

 while (amount_left_to_write > 0) {


  bh = common->next_buffhd_to_fill;
  if (bh->state == BUF_STATE_EMPTY && get_some_more) {






   amount = min(amount_left_to_req, FSG_BUFLEN);


   if (usb_offset >= curlun->file_length) {
    get_some_more = 0;
    curlun->sense_data =
     SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
    curlun->sense_data_info =
     usb_offset >> curlun->blkbits;
    curlun->info_valid = 1;
    continue;
   }


   usb_offset += amount;
   common->usb_amount_left -= amount;
   amount_left_to_req -= amount;
   if (amount_left_to_req == 0)
    get_some_more = 0;






   set_bulk_out_req_length(common, bh, amount);
   if (!start_out_transfer(common, bh))

    return -EIO;
   common->next_buffhd_to_fill = bh->next;
   continue;
  }


  bh = common->next_buffhd_to_drain;
  if (bh->state == BUF_STATE_EMPTY && !get_some_more)
   break;


  rc = sleep_thread(common, 0, bh);
  if (rc)
   return rc;

  common->next_buffhd_to_drain = bh->next;
  bh->state = BUF_STATE_EMPTY;


  if (bh->outreq->status != 0) {
   curlun->sense_data = SS_COMMUNICATION_FAILURE;
   curlun->sense_data_info =
     file_offset >> curlun->blkbits;
   curlun->info_valid = 1;
   break;
  }

  amount = bh->outreq->actual;
  if (curlun->file_length - file_offset < amount) {
   LERROR(curlun, "write %u @ %llu beyond end %llu\n",
           amount, (unsigned long long)file_offset,
           (unsigned long long)curlun->file_length);
   amount = curlun->file_length - file_offset;
  }





  amount = min(amount, bh->bulk_out_intended_length);


  amount = round_down(amount, curlun->blksize);
  if (amount == 0)
   goto empty_write;


  file_offset_tmp = file_offset;
  nwritten = kernel_write(curlun->filp, bh->buf, amount,
    &file_offset_tmp);
  VLDBG(curlun, "file write %u @ %llu -> %d\n", amount,
    (unsigned long long)file_offset, (int)nwritten);
  if (signal_pending(current))
   return -EINTR;

  if (nwritten < 0) {
   LDBG(curlun, "error in file write: %d\n",
     (int) nwritten);
   nwritten = 0;
  } else if (nwritten < amount) {
   LDBG(curlun, "partial file write: %d/%u\n",
     (int) nwritten, amount);
   nwritten = round_down(nwritten, curlun->blksize);
  }
  file_offset += nwritten;
  amount_left_to_write -= nwritten;
  common->residue -= nwritten;


  if (nwritten < amount) {
   curlun->sense_data = SS_WRITE_ERROR;
   curlun->sense_data_info =
     file_offset >> curlun->blkbits;
   curlun->info_valid = 1;
   break;
  }

 empty_write:

  if (bh->outreq->actual < bh->bulk_out_intended_length) {
   common->short_packet_received = 1;
   break;
  }
 }

 return -EIO;
}
