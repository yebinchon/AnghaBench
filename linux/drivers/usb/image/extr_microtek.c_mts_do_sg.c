
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct urb {int status; } ;
struct TYPE_9__ {TYPE_1__* curr_sg; int data_pipe; TYPE_5__* srb; int fragment; } ;
struct TYPE_8__ {int result; } ;
struct TYPE_7__ {int length; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int ENOENT ;
 int MTS_DEBUG (char*,int ,int ) ;
 int MTS_INT_INIT () ;
 TYPE_6__* context ;
 void mts_data_done (struct urb*) ;
 int mts_int_submit_urb (struct urb*,int ,int ,int ,void (*) (struct urb*)) ;
 int mts_transfer_cleanup (struct urb*) ;
 int scsi_sg_count (TYPE_5__*) ;
 scalar_t__ sg_is_last (TYPE_1__*) ;
 TYPE_1__* sg_next (TYPE_1__*) ;
 int sg_virt (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mts_do_sg (struct urb* transfer)
{
 int status = transfer->status;
 MTS_INT_INIT();

 MTS_DEBUG("Processing fragment %d of %d\n", context->fragment,
                                           scsi_sg_count(context->srb));

 if (unlikely(status)) {
                context->srb->result = (status == -ENOENT ? DID_ABORT : DID_ERROR)<<16;
  mts_transfer_cleanup(transfer);
        }

 context->curr_sg = sg_next(context->curr_sg);
 mts_int_submit_urb(transfer,
      context->data_pipe,
      sg_virt(context->curr_sg),
      context->curr_sg->length,
      sg_is_last(context->curr_sg) ?
      mts_data_done : mts_do_sg);
}
