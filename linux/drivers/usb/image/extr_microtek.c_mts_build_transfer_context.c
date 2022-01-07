
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int * cmnd; } ;
struct TYPE_4__ {int data_pipe; TYPE_2__* curr_sg; scalar_t__ data_length; int * data; struct scsi_cmnd* srb; struct mts_desc* instance; } ;
struct mts_desc {TYPE_1__ context; scalar_t__ ep_out; int usb_dev; scalar_t__ ep_response; scalar_t__ ep_image; } ;
struct TYPE_5__ {scalar_t__ length; } ;


 int MTS_DEBUG (char*,int) ;
 int MTS_DEBUG_GOT_HERE () ;
 scalar_t__ MTS_DIRECTION_IS_IN (int ) ;
 int memcmp (int *,int ,int ) ;
 int mts_read_image_sig ;
 int mts_read_image_sig_len ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 TYPE_2__* scsi_sglist (struct scsi_cmnd*) ;
 int * sg_virt (TYPE_2__*) ;
 int usb_rcvbulkpipe (int ,scalar_t__) ;
 int usb_sndbulkpipe (int ,scalar_t__) ;

__attribute__((used)) static void
mts_build_transfer_context(struct scsi_cmnd *srb, struct mts_desc* desc)
{
 int pipe;

 MTS_DEBUG_GOT_HERE();

 desc->context.instance = desc;
 desc->context.srb = srb;

 if (!scsi_bufflen(srb)) {
  desc->context.data = ((void*)0);
  desc->context.data_length = 0;
  return;
 } else {
  desc->context.curr_sg = scsi_sglist(srb);
  desc->context.data = sg_virt(desc->context.curr_sg);
  desc->context.data_length = desc->context.curr_sg->length;
 }






 if ( !memcmp( srb->cmnd, mts_read_image_sig, mts_read_image_sig_len )
) { pipe = usb_rcvbulkpipe(desc->usb_dev,desc->ep_image);
  MTS_DEBUG( "transferring from desc->ep_image == %d\n",
      (int)desc->ep_image );
 } else if ( MTS_DIRECTION_IS_IN(srb->cmnd[0]) ) {
   pipe = usb_rcvbulkpipe(desc->usb_dev,desc->ep_response);
   MTS_DEBUG( "transferring from desc->ep_response == %d\n",
       (int)desc->ep_response);
 } else {
  MTS_DEBUG("transferring to desc->ep_out == %d\n",
     (int)desc->ep_out);
  pipe = usb_sndbulkpipe(desc->usb_dev,desc->ep_out);
 }
 desc->context.data_pipe = pipe;
}
