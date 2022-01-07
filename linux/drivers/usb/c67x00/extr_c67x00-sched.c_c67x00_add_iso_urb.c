
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int number_of_packets; char* transfer_buffer; int interval; TYPE_1__* iso_frame_desc; int pipe; struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {int cnt; TYPE_2__* ep_data; } ;
struct c67x00_hcd {int current_frame; } ;
struct TYPE_4__ {int next_frame; } ;
struct TYPE_3__ {int offset; int length; int status; scalar_t__ actual_length; } ;


 int BUG_ON (int) ;
 int USB_PID_IN ;
 int USB_PID_OUT ;
 int c67x00_create_td (struct c67x00_hcd*,struct urb*,char*,int,int,int ,size_t) ;
 int c67x00_giveback_urb (struct c67x00_hcd*,struct urb*,int ) ;
 int c67x00_hcd_dev (struct c67x00_hcd*) ;
 int dev_dbg (int ,char*,int) ;
 int frame_add (int ,int ) ;
 scalar_t__ frame_after_eq (int ,int ) ;
 scalar_t__ usb_pipeout (int ) ;

__attribute__((used)) static int c67x00_add_iso_urb(struct c67x00_hcd *c67x00, struct urb *urb)
{
 struct c67x00_urb_priv *urbp = urb->hcpriv;

 if (frame_after_eq(c67x00->current_frame, urbp->ep_data->next_frame)) {
  char *td_buf;
  int len, pid, ret;

  BUG_ON(urbp->cnt >= urb->number_of_packets);

  td_buf = urb->transfer_buffer +
      urb->iso_frame_desc[urbp->cnt].offset;
  len = urb->iso_frame_desc[urbp->cnt].length;
  pid = usb_pipeout(urb->pipe) ? USB_PID_OUT : USB_PID_IN;

  ret = c67x00_create_td(c67x00, urb, td_buf, len, pid, 0,
           urbp->cnt);
  if (ret) {
   dev_dbg(c67x00_hcd_dev(c67x00), "create failed: %d\n",
    ret);
   urb->iso_frame_desc[urbp->cnt].actual_length = 0;
   urb->iso_frame_desc[urbp->cnt].status = ret;
   if (urbp->cnt + 1 == urb->number_of_packets)
    c67x00_giveback_urb(c67x00, urb, 0);
  }

  urbp->ep_data->next_frame =
      frame_add(urbp->ep_data->next_frame, urb->interval);
  urbp->cnt++;
 }
 return 0;
}
