
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int length; unsigned int actual; unsigned int buf; } ;
struct ast_vhub_req {TYPE_1__ req; } ;
struct TYPE_6__ {int ctlstat; int state; } ;
struct TYPE_5__ {unsigned int maxpacket; } ;
struct ast_vhub_ep {TYPE_3__ ep0; TYPE_2__ ep; int buf; } ;


 int EOVERFLOW ;
 int EPDBG (struct ast_vhub_ep*,char*,unsigned int) ;
 int EPVDBG (struct ast_vhub_ep*,char*,unsigned int,unsigned int) ;
 int VHUB_EP0_TX_BUFF_RDY ;
 int ast_vhub_done (struct ast_vhub_ep*,struct ast_vhub_req*,int) ;
 int ast_vhub_ep0_rx_prime (struct ast_vhub_ep*) ;
 int ep0_state_status ;
 int memcpy (unsigned int,int ,unsigned int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void ast_vhub_ep0_do_receive(struct ast_vhub_ep *ep, struct ast_vhub_req *req,
        unsigned int len)
{
 unsigned int remain;
 int rc = 0;


 remain = req->req.length - req->req.actual;

 EPVDBG(ep, "receive got=%d remain=%d\n", len, remain);


 if (len > remain) {
  EPDBG(ep, "receiving too much (ovf: %d) !\n",
        len - remain);
  len = remain;
  rc = -EOVERFLOW;
 }
 if (len && req->req.buf)
  memcpy(req->req.buf + req->req.actual, ep->buf, len);
 req->req.actual += len;


 if (len < ep->ep.maxpacket || len == remain) {
  ep->ep0.state = ep0_state_status;
  writel(VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
  ast_vhub_done(ep, req, rc);
 } else
  ast_vhub_ep0_rx_prime(ep);
}
