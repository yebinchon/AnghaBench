
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* req; scalar_t__ buf; } ;
struct f_uas {TYPE_1__ cmd; TYPE_2__* ep_cmd; } ;
struct TYPE_8__ {struct f_uas* context; int length; scalar_t__ buf; int complete; } ;
struct TYPE_7__ {int maxpacket; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kmalloc (int ,int ) ;
 int uasp_cmd_complete ;
 TYPE_3__* usb_ep_alloc_request (TYPE_2__*,int ) ;
 int usb_ep_free_request (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int uasp_alloc_cmd(struct f_uas *fu)
{
 fu->cmd.req = usb_ep_alloc_request(fu->ep_cmd, GFP_KERNEL);
 if (!fu->cmd.req)
  goto err;

 fu->cmd.buf = kmalloc(fu->ep_cmd->maxpacket, GFP_KERNEL);
 if (!fu->cmd.buf)
  goto err_buf;

 fu->cmd.req->complete = uasp_cmd_complete;
 fu->cmd.req->buf = fu->cmd.buf;
 fu->cmd.req->length = fu->ep_cmd->maxpacket;
 fu->cmd.req->context = fu;
 return 0;

err_buf:
 usb_ep_free_request(fu->ep_cmd, fu->cmd.req);
err:
 return -ENOMEM;
}
