
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_2__ {int reapable; int completing; int active; int pending; int lock; } ;
struct hfa384x {int commsqual_timer; int commsqual_bh; int state; int link_status; int ctlx_urb; int tx_urb; int rx_urb; int reqtimer; int resptimer; int throttle; int usb_work; int link_bh; int completion_bh; int reaper_bh; int authq; TYPE_1__ ctlxq; int cmdq; int endp_out; int endp_in; struct usb_device* usb; } ;


 int HFA384x_LINK_NOTCONNECTED ;
 int HFA384x_STATE_INIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int hfa384x_usb_defer ;
 int hfa384x_usb_throttlefn ;
 int hfa384x_usbctlx_completion_task ;
 int hfa384x_usbctlx_reaper_task ;
 int hfa384x_usbctlx_reqtimerfn ;
 int hfa384x_usbctlx_resptimerfn ;
 int init_waitqueue_head (int *) ;
 int memset (struct hfa384x*,int ,int) ;
 int prism2sta_commsqual_defer ;
 int prism2sta_commsqual_timer ;
 int prism2sta_processing_defer ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;
 int usb_init_urb (int *) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

void hfa384x_create(struct hfa384x *hw, struct usb_device *usb)
{
 memset(hw, 0, sizeof(*hw));
 hw->usb = usb;


 hw->endp_in = usb_rcvbulkpipe(usb, 1);
 hw->endp_out = usb_sndbulkpipe(usb, 2);


 init_waitqueue_head(&hw->cmdq);


 spin_lock_init(&hw->ctlxq.lock);
 INIT_LIST_HEAD(&hw->ctlxq.pending);
 INIT_LIST_HEAD(&hw->ctlxq.active);
 INIT_LIST_HEAD(&hw->ctlxq.completing);
 INIT_LIST_HEAD(&hw->ctlxq.reapable);


 skb_queue_head_init(&hw->authq);

 tasklet_init(&hw->reaper_bh,
       hfa384x_usbctlx_reaper_task, (unsigned long)hw);
 tasklet_init(&hw->completion_bh,
       hfa384x_usbctlx_completion_task, (unsigned long)hw);
 INIT_WORK(&hw->link_bh, prism2sta_processing_defer);
 INIT_WORK(&hw->usb_work, hfa384x_usb_defer);

 timer_setup(&hw->throttle, hfa384x_usb_throttlefn, 0);

 timer_setup(&hw->resptimer, hfa384x_usbctlx_resptimerfn, 0);

 timer_setup(&hw->reqtimer, hfa384x_usbctlx_reqtimerfn, 0);

 usb_init_urb(&hw->rx_urb);
 usb_init_urb(&hw->tx_urb);
 usb_init_urb(&hw->ctlx_urb);

 hw->link_status = HFA384x_LINK_NOTCONNECTED;
 hw->state = HFA384x_STATE_INIT;

 INIT_WORK(&hw->commsqual_bh, prism2sta_commsqual_defer);
 timer_setup(&hw->commsqual_timer, prism2sta_commsqual_timer, 0);
}
