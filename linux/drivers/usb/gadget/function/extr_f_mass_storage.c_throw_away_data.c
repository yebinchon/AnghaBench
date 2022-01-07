
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fsg_common {scalar_t__ usb_amount_left; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {scalar_t__ state; scalar_t__ bulk_out_intended_length; TYPE_1__* outreq; struct fsg_buffhd* next; } ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ status; } ;


 scalar_t__ BUF_STATE_EMPTY ;
 int EINTR ;
 int EIO ;
 int FSG_BUFLEN ;
 int FSG_STATE_ABORT_BULK_OUT ;
 scalar_t__ min (scalar_t__,int ) ;
 int raise_exception (struct fsg_common*,int ) ;
 int set_bulk_out_req_length (struct fsg_common*,struct fsg_buffhd*,scalar_t__) ;
 int sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int start_out_transfer (struct fsg_common*,struct fsg_buffhd*) ;

__attribute__((used)) static int throw_away_data(struct fsg_common *common)
{
 struct fsg_buffhd *bh, *bh2;
 u32 amount;
 int rc;

 for (bh = common->next_buffhd_to_drain;
      bh->state != BUF_STATE_EMPTY || common->usb_amount_left > 0;
      bh = common->next_buffhd_to_drain) {


  bh2 = common->next_buffhd_to_fill;
  if (bh2->state == BUF_STATE_EMPTY &&
    common->usb_amount_left > 0) {
   amount = min(common->usb_amount_left, FSG_BUFLEN);






   set_bulk_out_req_length(common, bh2, amount);
   if (!start_out_transfer(common, bh2))

    return -EIO;
   common->next_buffhd_to_fill = bh2->next;
   common->usb_amount_left -= amount;
   continue;
  }


  rc = sleep_thread(common, 0, bh);
  if (rc)
   return rc;


  bh->state = BUF_STATE_EMPTY;
  common->next_buffhd_to_drain = bh->next;


  if (bh->outreq->actual < bh->bulk_out_intended_length ||
    bh->outreq->status != 0) {
   raise_exception(common, FSG_STATE_ABORT_BULK_OUT);
   return -EINTR;
  }
 }
 return 0;
}
