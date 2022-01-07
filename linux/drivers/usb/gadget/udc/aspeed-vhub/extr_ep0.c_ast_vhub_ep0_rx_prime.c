
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctlstat; } ;
struct ast_vhub_ep {TYPE_1__ ep0; } ;


 int EPVDBG (struct ast_vhub_ep*,char*) ;
 int VHUB_EP0_RX_BUFF_RDY ;
 int writel (int ,int ) ;

__attribute__((used)) static void ast_vhub_ep0_rx_prime(struct ast_vhub_ep *ep)
{
 EPVDBG(ep, "rx prime\n");


 writel(VHUB_EP0_RX_BUFF_RDY, ep->ep0.ctlstat);
}
