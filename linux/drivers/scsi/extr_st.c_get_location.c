
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_request {int dummy; } ;
struct scsi_tape {scalar_t__ ready; TYPE_4__* ps; TYPE_3__* buffer; TYPE_2__* device; int scsi2_logical; } ;
struct TYPE_8__ {scalar_t__ drv_file; scalar_t__ drv_block; } ;
struct TYPE_7__ {int syscall_result; int* b_data; } ;
struct TYPE_6__ {scalar_t__ scsi_level; TYPE_1__* request_queue; } ;
struct TYPE_5__ {int rq_timeout; } ;


 int DEBC_printk (struct scsi_tape*,char*,...) ;
 int DMA_FROM_DEVICE ;
 int EIO ;
 int MAX_COMMAND_SIZE ;
 int MAX_READY_RETRIES ;
 unsigned char QFA_REQUEST_BLOCK ;
 unsigned char READ_POSITION ;
 scalar_t__ SCSI_2 ;
 scalar_t__ ST_READY ;
 int memset (unsigned char*,int ,int) ;
 struct st_request* st_do_scsi (int *,struct scsi_tape*,unsigned char*,int,int ,int ,int ,int) ;
 int st_release_request (struct st_request*) ;

__attribute__((used)) static int get_location(struct scsi_tape *STp, unsigned int *block, int *partition,
   int logical)
{
 int result;
 unsigned char scmd[MAX_COMMAND_SIZE];
 struct st_request *SRpnt;

 if (STp->ready != ST_READY)
  return (-EIO);

 memset(scmd, 0, MAX_COMMAND_SIZE);
 if ((STp->device)->scsi_level < SCSI_2) {
  scmd[0] = QFA_REQUEST_BLOCK;
  scmd[4] = 3;
 } else {
  scmd[0] = READ_POSITION;
  if (!logical && !STp->scsi2_logical)
   scmd[1] = 1;
 }
 SRpnt = st_do_scsi(((void*)0), STp, scmd, 20, DMA_FROM_DEVICE,
      STp->device->request_queue->rq_timeout,
      MAX_READY_RETRIES, 1);
 if (!SRpnt)
  return (STp->buffer)->syscall_result;

 if ((STp->buffer)->syscall_result != 0 ||
     (STp->device->scsi_level >= SCSI_2 &&
      ((STp->buffer)->b_data[0] & 4) != 0)) {
  *block = *partition = 0;
  DEBC_printk(STp, " Can't read tape position.\n");
  result = (-EIO);
 } else {
  result = 0;
  if ((STp->device)->scsi_level < SCSI_2) {
   *block = ((STp->buffer)->b_data[0] << 16)
       + ((STp->buffer)->b_data[1] << 8)
       + (STp->buffer)->b_data[2];
   *partition = 0;
  } else {
   *block = ((STp->buffer)->b_data[4] << 24)
       + ((STp->buffer)->b_data[5] << 16)
       + ((STp->buffer)->b_data[6] << 8)
       + (STp->buffer)->b_data[7];
   *partition = (STp->buffer)->b_data[1];
   if (((STp->buffer)->b_data[0] & 0x80) &&
       (STp->buffer)->b_data[1] == 0)
    STp->ps[0].drv_block = STp->ps[0].drv_file = 0;
  }
  DEBC_printk(STp, "Got tape pos. blk %d part %d.\n",
       *block, *partition);
 }
 st_release_request(SRpnt);
 SRpnt = ((void*)0);

 return result;
}
