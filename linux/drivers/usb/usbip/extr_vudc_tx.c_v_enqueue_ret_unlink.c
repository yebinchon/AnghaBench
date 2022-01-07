
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int tx_queue; int ud; } ;
struct v_unlink {void* status; void* seqnum; } ;
struct tx_item {int tx_entry; struct v_unlink* u; int type; } ;
typedef void* __u32 ;


 int GFP_ATOMIC ;
 int TX_UNLINK ;
 int VDEV_EVENT_ERROR_MALLOC ;
 int kfree (struct tx_item*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int usbip_event_add (int *,int ) ;

void v_enqueue_ret_unlink(struct vudc *udc, __u32 seqnum, __u32 status)
{
 struct tx_item *txi;
 struct v_unlink *unlink;

 txi = kzalloc(sizeof(*txi), GFP_ATOMIC);
 if (!txi) {
  usbip_event_add(&udc->ud, VDEV_EVENT_ERROR_MALLOC);
  return;
 }
 unlink = kzalloc(sizeof(*unlink), GFP_ATOMIC);
 if (!unlink) {
  kfree(txi);
  usbip_event_add(&udc->ud, VDEV_EVENT_ERROR_MALLOC);
  return;
 }

 unlink->seqnum = seqnum;
 unlink->status = status;
 txi->type = TX_UNLINK;
 txi->u = unlink;

 list_add_tail(&txi->tx_entry, &udc->tx_queue);
}
