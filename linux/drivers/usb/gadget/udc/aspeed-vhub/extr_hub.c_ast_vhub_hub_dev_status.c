
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ast_vhub_ep {TYPE_1__* vhub; } ;
struct TYPE_2__ {scalar_t__ wakeup_en; } ;


 int EPDBG (struct ast_vhub_ep*,char*) ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DEVICE_SELF_POWERED ;
 int ast_vhub_simple_reply (struct ast_vhub_ep*,int,int ) ;

__attribute__((used)) static int ast_vhub_hub_dev_status(struct ast_vhub_ep *ep,
       u16 wIndex, u16 wValue)
{
 u8 st0;

 EPDBG(ep, "GET_STATUS(dev)\n");





 st0 = 1 << USB_DEVICE_SELF_POWERED;





 if (ep->vhub->wakeup_en)
  st0 |= 1 << USB_DEVICE_REMOTE_WAKEUP;

 return ast_vhub_simple_reply(ep, st0, 0);
}
