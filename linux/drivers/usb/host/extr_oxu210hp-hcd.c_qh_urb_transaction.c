
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_buffer_length; int transfer_flags; int pipe; int dev; void* transfer_buffer; void* setup_packet; int transfer_dma; } ;
struct oxu_hcd {TYPE_1__* async; } ;
struct list_head {int dummy; } ;
struct ehci_qtd {int buffer_dma; int hw_token; int qtd_list; int qtd_dma; void* hw_next; struct urb* urb; int hw_alt_next; void* transfer_buffer; int buffer; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int hw_alt_next; } ;


 int EHCI_LIST_END ;
 int EHCI_TUNE_CERR ;
 int QTD_IOC ;
 void* QTD_NEXT (int ) ;
 int QTD_STS_ACTIVE ;
 int QTD_TOGGLE ;
 int URB_SHORT_NOT_OK ;
 int URB_ZERO_PACKET ;
 int cpu_to_le32 (int ) ;
 struct ehci_qtd* ehci_qtd_alloc (struct oxu_hcd*) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,struct list_head*) ;
 int max_packet (int ) ;
 int memcpy (int ,void*,int) ;
 int oxu_buf_alloc (struct oxu_hcd*,struct ehci_qtd*,int) ;
 void* phys_to_virt (int ) ;
 int qtd_fill (struct ehci_qtd*,int,int,int,int) ;
 int qtd_list_free (struct oxu_hcd*,struct urb*,struct list_head*) ;
 scalar_t__ unlikely (int) ;
 int usb_maxpacket (int ,int ,int) ;
 scalar_t__ usb_pipebulk (int ) ;
 scalar_t__ usb_pipecontrol (int ) ;
 int usb_pipein (int ) ;

__attribute__((used)) static struct list_head *qh_urb_transaction(struct oxu_hcd *oxu,
      struct urb *urb,
      struct list_head *head,
      gfp_t flags)
{
 struct ehci_qtd *qtd, *qtd_prev;
 dma_addr_t buf;
 int len, maxpacket;
 int is_input;
 u32 token;
 void *transfer_buf = ((void*)0);
 int ret;




 qtd = ehci_qtd_alloc(oxu);
 if (unlikely(!qtd))
  return ((void*)0);
 list_add_tail(&qtd->qtd_list, head);
 qtd->urb = urb;

 token = QTD_STS_ACTIVE;
 token |= (EHCI_TUNE_CERR << 10);


 len = urb->transfer_buffer_length;
 is_input = usb_pipein(urb->pipe);
 if (!urb->transfer_buffer && urb->transfer_buffer_length && is_input)
  urb->transfer_buffer = phys_to_virt(urb->transfer_dma);

 if (usb_pipecontrol(urb->pipe)) {

  ret = oxu_buf_alloc(oxu, qtd, sizeof(struct usb_ctrlrequest));
  if (ret)
   goto cleanup;

  qtd_fill(qtd, qtd->buffer_dma, sizeof(struct usb_ctrlrequest),
    token | (2 << 8), 8);
  memcpy(qtd->buffer, qtd->urb->setup_packet,
    sizeof(struct usb_ctrlrequest));


  token ^= QTD_TOGGLE;
  qtd_prev = qtd;
  qtd = ehci_qtd_alloc(oxu);
  if (unlikely(!qtd))
   goto cleanup;
  qtd->urb = urb;
  qtd_prev->hw_next = QTD_NEXT(qtd->qtd_dma);
  list_add_tail(&qtd->qtd_list, head);


  if (len == 0)
   token |= (1 << 8);
 }





 ret = oxu_buf_alloc(oxu, qtd, len);
 if (ret)
  goto cleanup;

 buf = qtd->buffer_dma;
 transfer_buf = urb->transfer_buffer;

 if (!is_input)
  memcpy(qtd->buffer, qtd->urb->transfer_buffer, len);

 if (is_input)
  token |= (1 << 8);


 maxpacket = max_packet(usb_maxpacket(urb->dev, urb->pipe, !is_input));






 for (;;) {
  int this_qtd_len;

  this_qtd_len = qtd_fill(qtd, buf, len, token, maxpacket);
  qtd->transfer_buffer = transfer_buf;
  len -= this_qtd_len;
  buf += this_qtd_len;
  transfer_buf += this_qtd_len;
  if (is_input)
   qtd->hw_alt_next = oxu->async->hw_alt_next;


  if ((maxpacket & (this_qtd_len + (maxpacket - 1))) == 0)
   token ^= QTD_TOGGLE;

  if (likely(len <= 0))
   break;

  qtd_prev = qtd;
  qtd = ehci_qtd_alloc(oxu);
  if (unlikely(!qtd))
   goto cleanup;
  if (likely(len > 0)) {
   ret = oxu_buf_alloc(oxu, qtd, len);
   if (ret)
    goto cleanup;
  }
  qtd->urb = urb;
  qtd_prev->hw_next = QTD_NEXT(qtd->qtd_dma);
  list_add_tail(&qtd->qtd_list, head);
 }




 if (likely((urb->transfer_flags & URB_SHORT_NOT_OK) == 0
    || usb_pipecontrol(urb->pipe)))
  qtd->hw_alt_next = EHCI_LIST_END;





 if (likely(urb->transfer_buffer_length != 0)) {
  int one_more = 0;

  if (usb_pipecontrol(urb->pipe)) {
   one_more = 1;
   token ^= 0x0100;
   token |= QTD_TOGGLE;
  } else if (usb_pipebulk(urb->pipe)
    && (urb->transfer_flags & URB_ZERO_PACKET)
    && !(urb->transfer_buffer_length % maxpacket)) {
   one_more = 1;
  }
  if (one_more) {
   qtd_prev = qtd;
   qtd = ehci_qtd_alloc(oxu);
   if (unlikely(!qtd))
    goto cleanup;
   qtd->urb = urb;
   qtd_prev->hw_next = QTD_NEXT(qtd->qtd_dma);
   list_add_tail(&qtd->qtd_list, head);


   qtd_fill(qtd, 0, 0, token, 0);
  }
 }


 qtd->hw_token |= cpu_to_le32(QTD_IOC);
 return head;

cleanup:
 qtd_list_free(oxu, urb, head);
 return ((void*)0);
}
