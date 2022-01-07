
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ length; unsigned int actual; unsigned int buf; int zero; } ;
struct ast_vhub_req {int last_desc; TYPE_3__ req; } ;
struct TYPE_5__ {int ctlstat; int state; } ;
struct TYPE_4__ {unsigned int maxpacket; } ;
struct ast_vhub_ep {TYPE_2__ ep0; int buf; TYPE_1__ ep; } ;


 int EPVDBG (struct ast_vhub_ep*,char*,unsigned int,int,...) ;
 int VHUB_EP0_RX_BUFF_RDY ;
 int VHUB_EP0_SET_TX_LEN (unsigned int) ;
 int VHUB_EP0_TX_BUFF_RDY ;
 int ast_vhub_done (struct ast_vhub_ep*,struct ast_vhub_req*,int ) ;
 int ep0_state_status ;
 int memcpy (int ,unsigned int,unsigned int) ;
 int vhub_dma_workaround (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void ast_vhub_ep0_do_send(struct ast_vhub_ep *ep,
     struct ast_vhub_req *req)
{
 unsigned int chunk;
 u32 reg;




 if (req->req.length == 0)
  req->last_desc = 1;


 if (req->last_desc >= 0) {
  EPVDBG(ep, "complete send %d/%d\n",
         req->req.actual, req->req.length);
  ep->ep0.state = ep0_state_status;
  writel(VHUB_EP0_RX_BUFF_RDY, ep->ep0.ctlstat);
  ast_vhub_done(ep, req, 0);
  return;
 }





 chunk = req->req.length - req->req.actual;
 if (chunk > ep->ep.maxpacket)
  chunk = ep->ep.maxpacket;
 else if ((chunk < ep->ep.maxpacket) || !req->req.zero)
  req->last_desc = 1;

 EPVDBG(ep, "send chunk=%d last=%d, req->act=%d mp=%d\n",
        chunk, req->last_desc, req->req.actual, ep->ep.maxpacket);





 if (chunk && req->req.buf)
  memcpy(ep->buf, req->req.buf + req->req.actual, chunk);

 vhub_dma_workaround(ep->buf);


 reg = VHUB_EP0_SET_TX_LEN(chunk);
 writel(reg, ep->ep0.ctlstat);
 writel(reg | VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
 req->req.actual += chunk;
}
