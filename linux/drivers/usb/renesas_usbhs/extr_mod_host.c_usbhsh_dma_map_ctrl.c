
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_request {struct urb* urb; } ;
struct usbhs_pkt {int dma; } ;
struct urb {int transfer_dma; scalar_t__ num_sgs; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct usbhsh_request* usbhsh_pkt_to_ureq (struct usbhs_pkt*) ;

__attribute__((used)) static int usbhsh_dma_map_ctrl(struct device *dma_dev, struct usbhs_pkt *pkt,
          int map)
{
 if (map) {
  struct usbhsh_request *ureq = usbhsh_pkt_to_ureq(pkt);
  struct urb *urb = ureq->urb;


  if (urb->num_sgs)
   return -EINVAL;

  pkt->dma = urb->transfer_dma;
  if (!pkt->dma)
   return -EINVAL;
 }

 return 0;
}
