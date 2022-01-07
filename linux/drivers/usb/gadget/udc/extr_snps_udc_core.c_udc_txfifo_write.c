
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct usb_request {int actual; unsigned int length; int * buf; } ;
struct TYPE_3__ {unsigned int maxpacket; } ;
struct udc_ep {TYPE_2__* regs; int * txfifo; TYPE_1__ ep; } ;
struct TYPE_4__ {int confirm; } ;


 int UDC_BITS_PER_BYTE_SHIFT ;
 unsigned int UDC_DWORD_BYTES ;
 int prefetch (int *) ;
 int writeb (int ,int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void
udc_txfifo_write(struct udc_ep *ep, struct usb_request *req)
{
 u8 *req_buf;
 u32 *buf;
 int i, j;
 unsigned bytes = 0;
 unsigned remaining = 0;

 if (!req || !ep)
  return;

 req_buf = req->buf + req->actual;
 prefetch(req_buf);
 remaining = req->length - req->actual;

 buf = (u32 *) req_buf;

 bytes = ep->ep.maxpacket;
 if (bytes > remaining)
  bytes = remaining;


 for (i = 0; i < bytes / UDC_DWORD_BYTES; i++)
  writel(*(buf + i), ep->txfifo);


 for (j = 0; j < bytes % UDC_DWORD_BYTES; j++) {
  writeb((u8)(*(buf + i) >> (j << UDC_BITS_PER_BYTE_SHIFT)),
       ep->txfifo);
 }


 writel(0, &ep->regs->confirm);
}
