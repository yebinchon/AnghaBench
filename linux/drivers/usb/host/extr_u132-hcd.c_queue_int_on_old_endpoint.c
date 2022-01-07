
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct urb {int interval; struct u132* hcpriv; } ;
struct u132_urbq {struct urb* urb; int urb_more; } ;
struct u132_udev {int dummy; } ;
struct u132_endp {int delayed; int urb_more; scalar_t__ queue_size; int queue_last; struct urb** urb_list; scalar_t__ jiffies; } ;
struct u132 {int dummy; } ;


 size_t ENDP_QUEUE_MASK ;
 scalar_t__ ENDP_QUEUE_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ jiffies ;
 struct u132_urbq* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static int queue_int_on_old_endpoint(struct u132 *u132,
 struct u132_udev *udev, struct urb *urb,
 struct usb_device *usb_dev, struct u132_endp *endp, u8 usb_addr,
 u8 usb_endp, u8 address)
{
 urb->hcpriv = u132;
 endp->delayed = 1;
 endp->jiffies = jiffies + msecs_to_jiffies(urb->interval);
 if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
  endp->urb_list[ENDP_QUEUE_MASK & endp->queue_last++] = urb;
 } else {
  struct u132_urbq *urbq = kmalloc(sizeof(struct u132_urbq),
   GFP_ATOMIC);
  if (urbq == ((void*)0)) {
   endp->queue_size -= 1;
   return -ENOMEM;
  } else {
   list_add_tail(&urbq->urb_more, &endp->urb_more);
   urbq->urb = urb;
  }
 }
 return 0;
}
