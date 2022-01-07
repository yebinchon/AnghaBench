
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_request {int dummy; } ;
struct st_partstat {int drv_block; } ;
struct TYPE_7__ {scalar_t__ sense_key; } ;
struct st_cmdstatus {int flags; scalar_t__ uremainder64; int remainder_valid; TYPE_3__ sense_hdr; int deferred; scalar_t__ have_sense; } ;
struct scsi_tape {int dirty; int block_size; size_t partition; TYPE_4__* buffer; struct st_partstat* ps; TYPE_2__* device; } ;
struct TYPE_8__ {int buffer_bytes; int syscall_result; struct st_cmdstatus cmdstat; } ;
struct TYPE_6__ {TYPE_1__* request_queue; } ;
struct TYPE_5__ {int rq_timeout; } ;


 int DEBC_printk (struct scsi_tape*,char*,int) ;
 int DMA_TO_DEVICE ;
 int EIO ;
 int ENOSPC ;
 int KERN_ERR ;
 int MAX_COMMAND_SIZE ;
 int MAX_WRITE_RETRIES ;
 scalar_t__ NO_SENSE ;
 scalar_t__ RECOVERED_ERROR ;
 int SENSE_EOM ;
 unsigned char WRITE_6 ;
 int memset (unsigned char*,int ,int) ;
 struct st_request* st_do_scsi (int *,struct scsi_tape*,unsigned char*,int,int ,int ,int ,int) ;
 int st_printk (int ,struct scsi_tape*,char*) ;
 int st_release_request (struct st_request*) ;
 int write_behind_check (struct scsi_tape*) ;

__attribute__((used)) static int st_flush_write_buffer(struct scsi_tape * STp)
{
 int transfer, blks;
 int result;
 unsigned char cmd[MAX_COMMAND_SIZE];
 struct st_request *SRpnt;
 struct st_partstat *STps;

 result = write_behind_check(STp);
 if (result)
  return result;

 result = 0;
 if (STp->dirty == 1) {

  transfer = STp->buffer->buffer_bytes;
  DEBC_printk(STp, "Flushing %d bytes.\n", transfer);

  memset(cmd, 0, MAX_COMMAND_SIZE);
  cmd[0] = WRITE_6;
  cmd[1] = 1;
  blks = transfer / STp->block_size;
  cmd[2] = blks >> 16;
  cmd[3] = blks >> 8;
  cmd[4] = blks;

  SRpnt = st_do_scsi(((void*)0), STp, cmd, transfer, DMA_TO_DEVICE,
       STp->device->request_queue->rq_timeout,
       MAX_WRITE_RETRIES, 1);
  if (!SRpnt)
   return (STp->buffer)->syscall_result;

  STps = &(STp->ps[STp->partition]);
  if ((STp->buffer)->syscall_result != 0) {
   struct st_cmdstatus *cmdstatp = &STp->buffer->cmdstat;

   if (cmdstatp->have_sense && !cmdstatp->deferred &&
       (cmdstatp->flags & SENSE_EOM) &&
       (cmdstatp->sense_hdr.sense_key == NO_SENSE ||
        cmdstatp->sense_hdr.sense_key == RECOVERED_ERROR) &&
       (!cmdstatp->remainder_valid ||
        cmdstatp->uremainder64 == 0)) {
    STp->dirty = 0;
    (STp->buffer)->buffer_bytes = 0;
    if (STps->drv_block >= 0)
     STps->drv_block += blks;
    result = (-ENOSPC);
   } else {
    st_printk(KERN_ERR, STp, "Error on flush.\n");
    STps->drv_block = (-1);
    result = (-EIO);
   }
  } else {
   if (STps->drv_block >= 0)
    STps->drv_block += blks;
   STp->dirty = 0;
   (STp->buffer)->buffer_bytes = 0;
  }
  st_release_request(SRpnt);
  SRpnt = ((void*)0);
 }
 return result;
}
