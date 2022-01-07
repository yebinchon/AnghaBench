
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int is_in; scalar_t__ stalled; scalar_t__ is_iso; int enabled; } ;
struct TYPE_3__ {int desc; } ;
struct ast_vhub_ep {TYPE_2__ epn; TYPE_1__ ep; } ;
struct ast_vhub_dev {int ep0; struct ast_vhub_ep** epns; } ;


 int AST_VHUB_NUM_GEN_EPs ;
 int DDBG (struct ast_vhub_dev*,char*,int) ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int ast_vhub_simple_reply (int *,int,int ) ;
 int std_req_stall ;

__attribute__((used)) static int ast_vhub_ep_status(struct ast_vhub_dev *d,
         u16 wIndex, u16 wValue)
{
 int ep_num = wIndex & USB_ENDPOINT_NUMBER_MASK;
 struct ast_vhub_ep *ep;
 u8 st0 = 0;

 DDBG(d, "GET_STATUS(ep%d)\n", ep_num);

 if (ep_num >= AST_VHUB_NUM_GEN_EPs)
  return std_req_stall;
 if (ep_num != 0) {
  ep = d->epns[ep_num - 1];
  if (!ep)
   return std_req_stall;
  if (!ep->epn.enabled || !ep->ep.desc || ep->epn.is_iso ||
      ep->epn.is_in != !!(wIndex & USB_DIR_IN))
   return std_req_stall;
  if (ep->epn.stalled)
   st0 |= 1 << USB_ENDPOINT_HALT;
 }

 return ast_vhub_simple_reply(&d->ep0, st0, 0);
}
