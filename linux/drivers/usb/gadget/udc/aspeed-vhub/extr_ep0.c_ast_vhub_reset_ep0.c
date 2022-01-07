
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct ast_vhub_ep {TYPE_1__ ep0; } ;
struct ast_vhub_dev {struct ast_vhub_ep ep0; } ;


 int EIO ;
 int ast_vhub_nuke (struct ast_vhub_ep*,int ) ;
 int ep0_state_token ;

void ast_vhub_reset_ep0(struct ast_vhub_dev *dev)
{
 struct ast_vhub_ep *ep = &dev->ep0;

 ast_vhub_nuke(ep, -EIO);
 ep->ep0.state = ep0_state_token;
}
