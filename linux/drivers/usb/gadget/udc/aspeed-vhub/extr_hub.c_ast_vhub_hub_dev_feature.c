
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ast_vhub_ep {TYPE_1__* vhub; } ;
struct TYPE_2__ {int wakeup_en; } ;


 int EPDBG (struct ast_vhub_ep*,char*,char*,...) ;
 scalar_t__ USB_DEVICE_REMOTE_WAKEUP ;
 int std_req_complete ;
 int std_req_stall ;

__attribute__((used)) static int ast_vhub_hub_dev_feature(struct ast_vhub_ep *ep,
        u16 wIndex, u16 wValue,
        bool is_set)
{
 EPDBG(ep, "%s_FEATURE(dev val=%02x)\n",
       is_set ? "SET" : "CLEAR", wValue);

 if (wValue != USB_DEVICE_REMOTE_WAKEUP)
  return std_req_stall;

 ep->vhub->wakeup_en = is_set;
 EPDBG(ep, "Hub remote wakeup %s\n",
       is_set ? "enabled" : "disabled");

 return std_req_complete;
}
