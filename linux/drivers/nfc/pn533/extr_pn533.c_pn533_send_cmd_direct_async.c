
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct pn533_cmd {void* complete_cb_context; int complete_cb; struct sk_buff* req; int code; } ;
struct pn533 {struct pn533_cmd* cmd; TYPE_1__* phy_ops; } ;
typedef int pn533_send_async_complete_t ;
struct TYPE_2__ {int (* send_frame ) (struct pn533*,struct sk_buff*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct pn533_cmd*) ;
 struct pn533_cmd* kzalloc (int,int ) ;
 int pn533_build_cmd_frame (struct pn533*,int ,struct sk_buff*) ;
 int stub1 (struct pn533*,struct sk_buff*) ;

__attribute__((used)) static int pn533_send_cmd_direct_async(struct pn533 *dev, u8 cmd_code,
           struct sk_buff *req,
           pn533_send_async_complete_t complete_cb,
           void *complete_cb_context)
{
 struct pn533_cmd *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->code = cmd_code;
 cmd->req = req;
 cmd->complete_cb = complete_cb;
 cmd->complete_cb_context = complete_cb_context;

 pn533_build_cmd_frame(dev, cmd_code, req);

 dev->cmd = cmd;
 rc = dev->phy_ops->send_frame(dev, req);
 if (rc < 0) {
  dev->cmd = ((void*)0);
  kfree(cmd);
 }

 return rc;
}
