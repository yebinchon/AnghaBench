
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct fsg_dev {int bulk_in_enabled; int bulk_out_enabled; TYPE_1__* bulk_out; TYPE_1__* bulk_in; int atomic_bitflags; int function; } ;
struct fsg_common {int running; int fsg_num_buffers; TYPE_8__** luns; struct fsg_buffhd* buffhds; int bulk_out_maxpacket; int gadget; struct fsg_dev* fsg; int fsg_wait; } ;
struct fsg_buffhd {TYPE_2__* outreq; TYPE_2__* inreq; int buf; } ;
struct TYPE_11__ {int unit_attention_data; } ;
struct TYPE_10__ {int complete; struct fsg_buffhd* context; int buf; } ;
struct TYPE_9__ {int desc; struct fsg_common* driver_data; } ;


 int ARRAY_SIZE (TYPE_8__**) ;
 int DBG (struct fsg_common*,char*) ;
 int IGNORE_BULK_OUT ;
 int SS_RESET_OCCURRED ;
 int alloc_request (struct fsg_common*,TYPE_1__*,TYPE_2__**) ;
 int bulk_in_complete ;
 int bulk_out_complete ;
 int clear_bit (int ,int *) ;
 int config_ep_by_speed (int ,int *,TYPE_1__*) ;
 int usb_endpoint_maxp (int ) ;
 int usb_ep_disable (TYPE_1__*) ;
 int usb_ep_enable (TYPE_1__*) ;
 int usb_ep_free_request (TYPE_1__*,TYPE_2__*) ;
 int wake_up (int *) ;

__attribute__((used)) static int do_set_interface(struct fsg_common *common, struct fsg_dev *new_fsg)
{
 struct fsg_dev *fsg;
 int i, rc = 0;

 if (common->running)
  DBG(common, "reset interface\n");

reset:

 if (common->fsg) {
  fsg = common->fsg;

  for (i = 0; i < common->fsg_num_buffers; ++i) {
   struct fsg_buffhd *bh = &common->buffhds[i];

   if (bh->inreq) {
    usb_ep_free_request(fsg->bulk_in, bh->inreq);
    bh->inreq = ((void*)0);
   }
   if (bh->outreq) {
    usb_ep_free_request(fsg->bulk_out, bh->outreq);
    bh->outreq = ((void*)0);
   }
  }


  if (fsg->bulk_in_enabled) {
   usb_ep_disable(fsg->bulk_in);
   fsg->bulk_in_enabled = 0;
  }
  if (fsg->bulk_out_enabled) {
   usb_ep_disable(fsg->bulk_out);
   fsg->bulk_out_enabled = 0;
  }

  common->fsg = ((void*)0);
  wake_up(&common->fsg_wait);
 }

 common->running = 0;
 if (!new_fsg || rc)
  return rc;

 common->fsg = new_fsg;
 fsg = common->fsg;


 rc = config_ep_by_speed(common->gadget, &(fsg->function), fsg->bulk_in);
 if (rc)
  goto reset;
 rc = usb_ep_enable(fsg->bulk_in);
 if (rc)
  goto reset;
 fsg->bulk_in->driver_data = common;
 fsg->bulk_in_enabled = 1;

 rc = config_ep_by_speed(common->gadget, &(fsg->function),
    fsg->bulk_out);
 if (rc)
  goto reset;
 rc = usb_ep_enable(fsg->bulk_out);
 if (rc)
  goto reset;
 fsg->bulk_out->driver_data = common;
 fsg->bulk_out_enabled = 1;
 common->bulk_out_maxpacket = usb_endpoint_maxp(fsg->bulk_out->desc);
 clear_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags);


 for (i = 0; i < common->fsg_num_buffers; ++i) {
  struct fsg_buffhd *bh = &common->buffhds[i];

  rc = alloc_request(common, fsg->bulk_in, &bh->inreq);
  if (rc)
   goto reset;
  rc = alloc_request(common, fsg->bulk_out, &bh->outreq);
  if (rc)
   goto reset;
  bh->inreq->buf = bh->outreq->buf = bh->buf;
  bh->inreq->context = bh->outreq->context = bh;
  bh->inreq->complete = bulk_in_complete;
  bh->outreq->complete = bulk_out_complete;
 }

 common->running = 1;
 for (i = 0; i < ARRAY_SIZE(common->luns); ++i)
  if (common->luns[i])
   common->luns[i]->unit_attention_data =
    SS_RESET_OCCURRED;
 return rc;
}
