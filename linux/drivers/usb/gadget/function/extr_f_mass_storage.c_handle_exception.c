
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_lun {scalar_t__ info_valid; scalar_t__ sense_data_info; void* unit_attention_data; void* sense_data; scalar_t__ prevent_medium_removal; } ;
struct fsg_dev {int dummy; } ;
struct fsg_common {scalar_t__ state; int fsg_num_buffers; unsigned int exception_req_tag; unsigned int ep0_req_tag; int lock; int cdev; TYPE_1__* fsg; struct fsg_lun** luns; struct fsg_dev* exception_arg; struct fsg_buffhd* buffhds; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {scalar_t__ state; int outreq; int inreq; } ;
typedef enum fsg_state { ____Placeholder_fsg_state } fsg_state ;
struct TYPE_2__ {int bulk_in; int atomic_bitflags; int bulk_out; scalar_t__ bulk_out_enabled; scalar_t__ bulk_in_enabled; } ;


 int ARRAY_SIZE (struct fsg_lun**) ;
 scalar_t__ BUF_STATE_EMPTY ;
 scalar_t__ BUF_STATE_RECEIVING ;
 scalar_t__ BUF_STATE_SENDING ;
 int DBG (struct fsg_common*,char*) ;






 int IGNORE_BULK_OUT ;
 int SIGUSR1 ;
 void* SS_NO_SENSE ;
 int do_set_interface (struct fsg_common*,struct fsg_dev*) ;
 int ep0_queue (struct fsg_common*) ;
 int fsg_is_set (struct fsg_common*) ;
 int kernel_dequeue_signal () ;
 scalar_t__ likely (TYPE_1__*) ;
 int send_status (struct fsg_common*) ;
 scalar_t__ sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int usb_composite_setup_continue (int ) ;
 int usb_ep_clear_halt (int ) ;
 int usb_ep_dequeue (int ,int ) ;
 int usb_ep_fifo_flush (int ) ;

__attribute__((used)) static void handle_exception(struct fsg_common *common)
{
 int i;
 struct fsg_buffhd *bh;
 enum fsg_state old_state;
 struct fsg_lun *curlun;
 unsigned int exception_req_tag;
 struct fsg_dev *new_fsg;





 for (;;) {
  int sig = kernel_dequeue_signal();
  if (!sig)
   break;
  if (sig != SIGUSR1) {
   spin_lock_irq(&common->lock);
   if (common->state < 131)
    DBG(common, "Main thread exiting on signal\n");
   common->state = 131;
   spin_unlock_irq(&common->lock);
  }
 }


 if (likely(common->fsg)) {
  for (i = 0; i < common->fsg_num_buffers; ++i) {
   bh = &common->buffhds[i];
   if (bh->state == BUF_STATE_SENDING)
    usb_ep_dequeue(common->fsg->bulk_in, bh->inreq);
   if (bh->state == BUF_STATE_RECEIVING)
    usb_ep_dequeue(common->fsg->bulk_out,
            bh->outreq);


   if (sleep_thread(common, 0, bh))
    return;
  }


  if (common->fsg->bulk_in_enabled)
   usb_ep_fifo_flush(common->fsg->bulk_in);
  if (common->fsg->bulk_out_enabled)
   usb_ep_fifo_flush(common->fsg->bulk_out);
 }





 spin_lock_irq(&common->lock);

 for (i = 0; i < common->fsg_num_buffers; ++i) {
  bh = &common->buffhds[i];
  bh->state = BUF_STATE_EMPTY;
 }
 common->next_buffhd_to_fill = &common->buffhds[0];
 common->next_buffhd_to_drain = &common->buffhds[0];
 exception_req_tag = common->exception_req_tag;
 new_fsg = common->exception_arg;
 old_state = common->state;
 common->state = 130;

 if (old_state != 133) {
  for (i = 0; i < ARRAY_SIZE(common->luns); ++i) {
   curlun = common->luns[i];
   if (!curlun)
    continue;
   curlun->prevent_medium_removal = 0;
   curlun->sense_data = SS_NO_SENSE;
   curlun->unit_attention_data = SS_NO_SENSE;
   curlun->sense_data_info = 0;
   curlun->info_valid = 0;
  }
 }
 spin_unlock_irq(&common->lock);


 switch (old_state) {
 case 130:
  break;

 case 133:
  send_status(common);
  break;

 case 129:





  if (!fsg_is_set(common))
   break;
  if (test_and_clear_bit(IGNORE_BULK_OUT,
           &common->fsg->atomic_bitflags))
   usb_ep_clear_halt(common->fsg->bulk_in);

  if (common->ep0_req_tag == exception_req_tag)
   ep0_queue(common);
  break;

 case 132:
  do_set_interface(common, new_fsg);
  if (new_fsg)
   usb_composite_setup_continue(common->cdev);
  break;

 case 131:
  do_set_interface(common, ((void*)0));
  spin_lock_irq(&common->lock);
  common->state = 128;
  spin_unlock_irq(&common->lock);
  break;

 case 128:
  break;
 }
}
