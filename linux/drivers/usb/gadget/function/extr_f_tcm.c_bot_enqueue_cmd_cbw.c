
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req; } ;
struct f_uas {int flags; TYPE_1__ cmd; int ep_out; } ;


 int GFP_ATOMIC ;
 int USBG_BOT_CMD_PEND ;
 int usb_ep_queue (int ,int ,int ) ;

__attribute__((used)) static int bot_enqueue_cmd_cbw(struct f_uas *fu)
{
 int ret;

 if (fu->flags & USBG_BOT_CMD_PEND)
  return 0;

 ret = usb_ep_queue(fu->ep_out, fu->cmd.req, GFP_ATOMIC);
 if (!ret)
  fu->flags |= USBG_BOT_CMD_PEND;
 return ret;
}
