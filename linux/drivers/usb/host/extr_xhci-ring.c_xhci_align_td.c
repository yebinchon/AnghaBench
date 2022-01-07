
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct xhci_segment {unsigned int bounce_len; unsigned int bounce_offs; void* bounce_dma; int bounce_buf; } ;
struct xhci_hcd {int dummy; } ;
struct urb {unsigned int transfer_buffer_length; int num_sgs; int sg; TYPE_2__* ep; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* controller; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {int desc; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 void* dma_map_single (struct device*,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 size_t sg_pcopy_to_buffer (int ,int ,int ,unsigned int,unsigned int) ;
 unsigned int usb_endpoint_maxp (int *) ;
 scalar_t__ usb_urb_dir_out (struct urb*) ;
 int xhci_dbg (struct xhci_hcd*,char*,unsigned int,...) ;
 TYPE_3__* xhci_to_hcd (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*,...) ;

__attribute__((used)) static int xhci_align_td(struct xhci_hcd *xhci, struct urb *urb, u32 enqd_len,
    u32 *trb_buff_len, struct xhci_segment *seg)
{
 struct device *dev = xhci_to_hcd(xhci)->self.controller;
 unsigned int unalign;
 unsigned int max_pkt;
 u32 new_buff_len;
 size_t len;

 max_pkt = usb_endpoint_maxp(&urb->ep->desc);
 unalign = (enqd_len + *trb_buff_len) % max_pkt;


 if (unalign == 0)
  return 0;

 xhci_dbg(xhci, "Unaligned %d bytes, buff len %d\n",
   unalign, *trb_buff_len);


 if (*trb_buff_len > unalign) {
  *trb_buff_len -= unalign;
  xhci_dbg(xhci, "split align, new buff len %d\n", *trb_buff_len);
  return 0;
 }






 new_buff_len = max_pkt - (enqd_len % max_pkt);

 if (new_buff_len > (urb->transfer_buffer_length - enqd_len))
  new_buff_len = (urb->transfer_buffer_length - enqd_len);


 if (usb_urb_dir_out(urb)) {
  len = sg_pcopy_to_buffer(urb->sg, urb->num_sgs,
       seg->bounce_buf, new_buff_len, enqd_len);
  if (len != new_buff_len)
   xhci_warn(xhci,
    "WARN Wrong bounce buffer write length: %zu != %d\n",
    len, new_buff_len);
  seg->bounce_dma = dma_map_single(dev, seg->bounce_buf,
       max_pkt, DMA_TO_DEVICE);
 } else {
  seg->bounce_dma = dma_map_single(dev, seg->bounce_buf,
       max_pkt, DMA_FROM_DEVICE);
 }

 if (dma_mapping_error(dev, seg->bounce_dma)) {

  xhci_warn(xhci, "Failed mapping bounce buffer, not aligning\n");
  return 0;
 }
 *trb_buff_len = new_buff_len;
 seg->bounce_len = new_buff_len;
 seg->bounce_offs = enqd_len;

 xhci_dbg(xhci, "Bounce align, new buff len %d\n", *trb_buff_len);

 return 1;
}
