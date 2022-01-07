
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {TYPE_3__* dev; TYPE_1__* ep; } ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct mon_reader_bin {int b_wait; int b_lock; } ;
struct mon_bin_hdr {char type; unsigned long id; int ts_usec; int status; char flag_setup; char flag_data; int ts_sec; int busnum; int devnum; int epnum; int xfer_type; } ;
struct TYPE_6__ {TYPE_2__* bus; int devnum; } ;
struct TYPE_5__ {int busnum; } ;
struct TYPE_4__ {int desc; } ;


 struct mon_bin_hdr* MON_OFF2HDR (struct mon_reader_bin*,unsigned int) ;
 int NSEC_PER_USEC ;
 int PKT_SIZE ;
 int USB_DIR_IN ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int memset (struct mon_bin_hdr*,int ,int ) ;
 unsigned int mon_buff_area_alloc (struct mon_reader_bin*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_endpoint_num (int *) ;
 size_t usb_endpoint_type (int *) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;
 int wake_up (int *) ;
 int * xfer_to_pipe ;

__attribute__((used)) static void mon_bin_error(void *data, struct urb *urb, int error)
{
 struct mon_reader_bin *rp = data;
 struct timespec64 ts;
 unsigned long flags;
 unsigned int offset;
 struct mon_bin_hdr *ep;

 ktime_get_real_ts64(&ts);

 spin_lock_irqsave(&rp->b_lock, flags);

 offset = mon_buff_area_alloc(rp, PKT_SIZE);
 if (offset == ~0) {

  spin_unlock_irqrestore(&rp->b_lock, flags);
  return;
 }

 ep = MON_OFF2HDR(rp, offset);

 memset(ep, 0, PKT_SIZE);
 ep->type = 'E';
 ep->xfer_type = xfer_to_pipe[usb_endpoint_type(&urb->ep->desc)];
 ep->epnum = usb_urb_dir_in(urb) ? USB_DIR_IN : 0;
 ep->epnum |= usb_endpoint_num(&urb->ep->desc);
 ep->devnum = urb->dev->devnum;
 ep->busnum = urb->dev->bus->busnum;
 ep->id = (unsigned long) urb;
 ep->ts_sec = ts.tv_sec;
 ep->ts_usec = ts.tv_nsec / NSEC_PER_USEC;
 ep->status = error;

 ep->flag_setup = '-';
 ep->flag_data = 'E';

 spin_unlock_irqrestore(&rp->b_lock, flags);

 wake_up(&rp->b_wait);
}
