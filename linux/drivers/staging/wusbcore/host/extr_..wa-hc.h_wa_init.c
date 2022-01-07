
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {scalar_t__ active_buf_in_urbs; int * buf_in_urbs; int xfer_id_count; scalar_t__ dto_in_use; int xfer_error_work; int xfer_enqueue_work; int xfer_list_lock; int xfer_errored_list; int xfer_delayed_list; int xfer_list; int dti_edc; int dti_state; int notifs_queued; int nep_edc; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int WA_DTI_TRANSFER_RESULT_PENDING ;
 int WA_MAX_BUF_IN_URBS ;
 int atomic_set (int *,int) ;
 int edc_init (int *) ;
 int spin_lock_init (int *) ;
 int usb_init_urb (int *) ;
 int wa_process_errored_transfers_run ;
 int wa_rpipe_init (struct wahc*) ;
 int wa_urb_enqueue_run ;

__attribute__((used)) static inline void wa_init(struct wahc *wa)
{
 int index;

 edc_init(&wa->nep_edc);
 atomic_set(&wa->notifs_queued, 0);
 wa->dti_state = WA_DTI_TRANSFER_RESULT_PENDING;
 wa_rpipe_init(wa);
 edc_init(&wa->dti_edc);
 INIT_LIST_HEAD(&wa->xfer_list);
 INIT_LIST_HEAD(&wa->xfer_delayed_list);
 INIT_LIST_HEAD(&wa->xfer_errored_list);
 spin_lock_init(&wa->xfer_list_lock);
 INIT_WORK(&wa->xfer_enqueue_work, wa_urb_enqueue_run);
 INIT_WORK(&wa->xfer_error_work, wa_process_errored_transfers_run);
 wa->dto_in_use = 0;
 atomic_set(&wa->xfer_id_count, 1);

 for (index = 0; index < WA_MAX_BUF_IN_URBS; ++index)
  usb_init_urb(&(wa->buf_in_urbs[index]));
 wa->active_buf_in_urbs = 0;
}
