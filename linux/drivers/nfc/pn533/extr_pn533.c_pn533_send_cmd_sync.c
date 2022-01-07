
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct pn533_sync_cmd_response {struct sk_buff* resp; int done; } ;
struct pn533 {int dummy; } ;


 struct sk_buff* ERR_PTR (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int init_completion (int *) ;
 int pn533_send_cmd_async (struct pn533*,int ,struct sk_buff*,int ,struct pn533_sync_cmd_response*) ;
 int pn533_send_sync_complete ;
 int wait_for_completion (int *) ;

__attribute__((used)) static struct sk_buff *pn533_send_cmd_sync(struct pn533 *dev, u8 cmd_code,
            struct sk_buff *req)
{
 int rc;
 struct pn533_sync_cmd_response arg;

 init_completion(&arg.done);

 rc = pn533_send_cmd_async(dev, cmd_code, req,
      pn533_send_sync_complete, &arg);
 if (rc) {
  dev_kfree_skb(req);
  return ERR_PTR(rc);
 }

 wait_for_completion(&arg.done);

 return arg.resp;
}
