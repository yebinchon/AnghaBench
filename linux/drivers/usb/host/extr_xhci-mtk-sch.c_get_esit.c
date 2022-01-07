
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_ep_ctx {int ep_info; } ;


 int CTX_TO_EP_INTERVAL (int ) ;
 int XHCI_MTK_MAX_ESIT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 get_esit(struct xhci_ep_ctx *ep_ctx)
{
 u32 esit;

 esit = 1 << CTX_TO_EP_INTERVAL(le32_to_cpu(ep_ctx->ep_info));
 if (esit > XHCI_MTK_MAX_ESIT)
  esit = XHCI_MTK_MAX_ESIT;

 return esit;
}
