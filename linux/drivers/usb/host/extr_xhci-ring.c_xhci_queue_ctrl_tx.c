
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct xhci_td {TYPE_1__* last_trb; } ;
struct xhci_ring {int cycle_state; TYPE_1__* enqueue; } ;
struct xhci_hcd {int hci_version; int quirks; int * devs; } ;
struct xhci_generic_trb {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wIndex; int wValue; } ;
struct urb_priv {struct xhci_td* td; } ;
struct urb {int transfer_buffer_length; scalar_t__ transfer_dma; int transfer_buffer; scalar_t__ setup_packet; struct urb_priv* hcpriv; int stream_id; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct xhci_generic_trb generic; } ;


 int EINVAL ;
 int TRB_DATA ;
 int TRB_DATA_IN ;
 int TRB_DATA_OUT ;
 int TRB_DIR_IN ;
 int TRB_IDT ;
 int TRB_INTR_TARGET (int ) ;
 int TRB_IOC ;
 int TRB_ISP ;
 int TRB_LEN (int) ;
 int TRB_SETUP ;
 int TRB_STATUS ;
 int TRB_TD_SIZE (int) ;
 int TRB_TX_TYPE (int ) ;
 int TRB_TYPE (int ) ;
 int USB_DIR_IN ;
 int XHCI_MTK_HOST ;
 int giveback_first_trb (struct xhci_hcd*,int,unsigned int,int ,int,struct xhci_generic_trb*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpus (scalar_t__*) ;
 int lower_32_bits (scalar_t__) ;
 int memcpy (scalar_t__*,int ,int) ;
 int prepare_transfer (struct xhci_hcd*,int ,unsigned int,int ,int,struct urb*,int ,int ) ;
 int queue_trb (struct xhci_hcd*,struct xhci_ring*,int,int,int,int,int) ;
 int upper_32_bits (scalar_t__) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;
 int xhci_td_remainder (struct xhci_hcd*,int ,int,int,struct urb*,int) ;
 scalar_t__ xhci_urb_suitable_for_idt (struct urb*) ;
 struct xhci_ring* xhci_urb_to_transfer_ring (struct xhci_hcd*,struct urb*) ;

int xhci_queue_ctrl_tx(struct xhci_hcd *xhci, gfp_t mem_flags,
  struct urb *urb, int slot_id, unsigned int ep_index)
{
 struct xhci_ring *ep_ring;
 int num_trbs;
 int ret;
 struct usb_ctrlrequest *setup;
 struct xhci_generic_trb *start_trb;
 int start_cycle;
 u32 field;
 struct urb_priv *urb_priv;
 struct xhci_td *td;

 ep_ring = xhci_urb_to_transfer_ring(xhci, urb);
 if (!ep_ring)
  return -EINVAL;





 if (!urb->setup_packet)
  return -EINVAL;


 num_trbs = 2;





 if (urb->transfer_buffer_length > 0)
  num_trbs++;
 ret = prepare_transfer(xhci, xhci->devs[slot_id],
   ep_index, urb->stream_id,
   num_trbs, urb, 0, mem_flags);
 if (ret < 0)
  return ret;

 urb_priv = urb->hcpriv;
 td = &urb_priv->td[0];






 start_trb = &ep_ring->enqueue->generic;
 start_cycle = ep_ring->cycle_state;



 setup = (struct usb_ctrlrequest *) urb->setup_packet;
 field = 0;
 field |= TRB_IDT | TRB_TYPE(TRB_SETUP);
 if (start_cycle == 0)
  field |= 0x1;


 if ((xhci->hci_version >= 0x100) || (xhci->quirks & XHCI_MTK_HOST)) {
  if (urb->transfer_buffer_length > 0) {
   if (setup->bRequestType & USB_DIR_IN)
    field |= TRB_TX_TYPE(TRB_DATA_IN);
   else
    field |= TRB_TX_TYPE(TRB_DATA_OUT);
  }
 }

 queue_trb(xhci, ep_ring, 1,
    setup->bRequestType | setup->bRequest << 8 | le16_to_cpu(setup->wValue) << 16,
    le16_to_cpu(setup->wIndex) | le16_to_cpu(setup->wLength) << 16,
    TRB_LEN(8) | TRB_INTR_TARGET(0),

    field);



 if (usb_urb_dir_in(urb))
  field = TRB_ISP | TRB_TYPE(TRB_DATA);
 else
  field = TRB_TYPE(TRB_DATA);

 if (urb->transfer_buffer_length > 0) {
  u32 length_field, remainder;
  u64 addr;

  if (xhci_urb_suitable_for_idt(urb)) {
   memcpy(&addr, urb->transfer_buffer,
          urb->transfer_buffer_length);
   le64_to_cpus(&addr);
   field |= TRB_IDT;
  } else {
   addr = (u64) urb->transfer_dma;
  }

  remainder = xhci_td_remainder(xhci, 0,
    urb->transfer_buffer_length,
    urb->transfer_buffer_length,
    urb, 1);
  length_field = TRB_LEN(urb->transfer_buffer_length) |
    TRB_TD_SIZE(remainder) |
    TRB_INTR_TARGET(0);
  if (setup->bRequestType & USB_DIR_IN)
   field |= TRB_DIR_IN;
  queue_trb(xhci, ep_ring, 1,
    lower_32_bits(addr),
    upper_32_bits(addr),
    length_field,
    field | ep_ring->cycle_state);
 }


 td->last_trb = ep_ring->enqueue;



 if (urb->transfer_buffer_length > 0 && setup->bRequestType & USB_DIR_IN)
  field = 0;
 else
  field = TRB_DIR_IN;
 queue_trb(xhci, ep_ring, 0,
   0,
   0,
   TRB_INTR_TARGET(0),

   field | TRB_IOC | TRB_TYPE(TRB_STATUS) | ep_ring->cycle_state);

 giveback_first_trb(xhci, slot_id, ep_index, 0,
   start_cycle, start_trb);
 return 0;
}
