
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int length; int zero; scalar_t__ actual; struct nbu2ss_udc* context; int status; int complete; scalar_t__ dma; void* buf; } ;
struct TYPE_3__ {TYPE_2__ req; } ;
struct nbu2ss_udc {TYPE_1__ ep0_req; } ;


 int EINPROGRESS ;
 int _nbu2ss_ep0_complete ;

__attribute__((used)) static void _nbu2ss_create_ep0_packet(struct nbu2ss_udc *udc,
          void *p_buf, unsigned int length)
{
 udc->ep0_req.req.buf = p_buf;
 udc->ep0_req.req.length = length;
 udc->ep0_req.req.dma = 0;
 udc->ep0_req.req.zero = 1;
 udc->ep0_req.req.complete = _nbu2ss_ep0_complete;
 udc->ep0_req.req.status = -EINPROGRESS;
 udc->ep0_req.req.context = udc;
 udc->ep0_req.req.actual = 0;
}
