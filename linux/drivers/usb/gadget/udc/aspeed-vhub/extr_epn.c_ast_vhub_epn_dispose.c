
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_ep {int dummy; } ;
struct TYPE_9__ {int * descs; } ;
struct TYPE_6__ {int * name; int ep_list; } ;
struct ast_vhub_ep {int d_idx; TYPE_5__* dev; TYPE_4__ epn; int * buf; int buf_dma; TYPE_3__* vhub; TYPE_1__ ep; } ;
struct TYPE_10__ {int ** epns; } ;
struct TYPE_8__ {TYPE_2__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int AST_VHUB_DESCS_COUNT ;
 scalar_t__ AST_VHUB_EPn_MAX_PACKET ;
 int EPDBG (struct ast_vhub_ep*,char*) ;
 scalar_t__ WARN_ON (int) ;
 int dma_free_coherent (int *,scalar_t__,int *,int ) ;
 int kfree (int *) ;
 int list_del_init (int *) ;
 struct ast_vhub_ep* to_ast_ep (struct usb_ep*) ;

__attribute__((used)) static void ast_vhub_epn_dispose(struct usb_ep *u_ep)
{
 struct ast_vhub_ep *ep = to_ast_ep(u_ep);

 if (WARN_ON(!ep->dev || !ep->d_idx))
  return;

 EPDBG(ep, "Releasing endpoint\n");


 list_del_init(&ep->ep.ep_list);


 ep->dev->epns[ep->d_idx - 1] = ((void*)0);


 kfree(ep->ep.name);
 ep->ep.name = ((void*)0);
 dma_free_coherent(&ep->vhub->pdev->dev,
     AST_VHUB_EPn_MAX_PACKET +
     8 * AST_VHUB_DESCS_COUNT,
     ep->buf, ep->buf_dma);
 ep->buf = ((void*)0);
 ep->epn.descs = ((void*)0);


 ep->dev = ((void*)0);
}
