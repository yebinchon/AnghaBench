
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ desc_mode; } ;
struct ast_vhub_ep {TYPE_1__ epn; } ;


 int ast_vhub_epn_handle_ack (struct ast_vhub_ep*) ;
 int ast_vhub_epn_handle_ack_desc (struct ast_vhub_ep*) ;

void ast_vhub_epn_ack_irq(struct ast_vhub_ep *ep)
{
 if (ep->epn.desc_mode)
  ast_vhub_epn_handle_ack_desc(ep);
 else
  ast_vhub_epn_handle_ack(ep);
}
