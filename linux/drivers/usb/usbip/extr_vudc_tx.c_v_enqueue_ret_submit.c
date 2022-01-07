
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int tx_queue; int ud; } ;
struct urbp {int dummy; } ;
struct tx_item {int tx_entry; struct urbp* s; int type; } ;


 int GFP_ATOMIC ;
 int TX_SUBMIT ;
 int VDEV_EVENT_ERROR_MALLOC ;
 struct tx_item* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int usbip_event_add (int *,int ) ;

void v_enqueue_ret_submit(struct vudc *udc, struct urbp *urb_p)
{
 struct tx_item *txi;

 txi = kzalloc(sizeof(*txi), GFP_ATOMIC);
 if (!txi) {
  usbip_event_add(&udc->ud, VDEV_EVENT_ERROR_MALLOC);
  return;
 }

 txi->type = TX_SUBMIT;
 txi->s = urb_p;

 list_add_tail(&txi->tx_entry, &udc->tx_queue);
}
