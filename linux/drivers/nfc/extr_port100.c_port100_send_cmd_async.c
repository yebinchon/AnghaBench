
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct port100_cmd {int resp_len; void* complete_cb_context; int complete_cb; struct sk_buff* resp; struct sk_buff* req; int code; } ;
struct port100 {struct port100_cmd* cmd; TYPE_1__* interface; } ;
typedef int port100_send_async_complete_t ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PORT100_FRAME_HEADER_LEN ;
 int PORT100_FRAME_MAX_PAYLOAD_LEN ;
 int PORT100_FRAME_TAIL_LEN ;
 struct sk_buff* alloc_skb (int,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int kfree (struct port100_cmd*) ;
 struct port100_cmd* kzalloc (int,int ) ;
 int nfc_err (int *,char*) ;
 int port100_build_cmd_frame (struct port100*,int ,struct sk_buff*) ;
 int port100_send_frame_async (struct port100*,struct sk_buff*,struct sk_buff*,int) ;

__attribute__((used)) static int port100_send_cmd_async(struct port100 *dev, u8 cmd_code,
    struct sk_buff *req,
    port100_send_async_complete_t complete_cb,
    void *complete_cb_context)
{
 struct port100_cmd *cmd;
 struct sk_buff *resp;
 int rc;
 int resp_len = PORT100_FRAME_HEADER_LEN +
   PORT100_FRAME_MAX_PAYLOAD_LEN +
   PORT100_FRAME_TAIL_LEN;

 if (dev->cmd) {
  nfc_err(&dev->interface->dev,
   "A command is still in process\n");
  return -EBUSY;
 }

 resp = alloc_skb(resp_len, GFP_KERNEL);
 if (!resp)
  return -ENOMEM;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  dev_kfree_skb(resp);
  return -ENOMEM;
 }

 cmd->code = cmd_code;
 cmd->req = req;
 cmd->resp = resp;
 cmd->resp_len = resp_len;
 cmd->complete_cb = complete_cb;
 cmd->complete_cb_context = complete_cb_context;

 port100_build_cmd_frame(dev, cmd_code, req);

 dev->cmd = cmd;

 rc = port100_send_frame_async(dev, req, resp, resp_len);
 if (rc) {
  kfree(cmd);
  dev_kfree_skb(resp);
  dev->cmd = ((void*)0);
 }

 return rc;
}
