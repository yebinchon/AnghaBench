
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;
struct port100_tg_comm_rf_res {int target_activated; int status; } ;
struct port100_cb_arg {int complete_arg; scalar_t__ mdaa; int (* complete_cb ) (int ,int ,struct sk_buff*) ;} ;
struct port100 {int nfc_digital_dev; } ;
typedef int (* nfc_digital_cmd_complete_t ) (int ,int ,struct sk_buff*) ;


 int EIO ;
 struct sk_buff* ERR_PTR (int ) ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ PORT100_CMD_STATUS_OK ;
 scalar_t__ PORT100_CMD_STATUS_TIMEOUT ;
 int kfree (struct port100_cb_arg*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int port100_tg_target_activated (struct port100*,int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void port100_tg_comm_rf_complete(struct port100 *dev, void *arg,
     struct sk_buff *resp)
{
 u32 status;
 struct port100_cb_arg *cb_arg = arg;
 nfc_digital_cmd_complete_t cb = cb_arg->complete_cb;
 struct port100_tg_comm_rf_res *hdr;

 if (IS_ERR(resp))
  goto exit;

 hdr = (struct port100_tg_comm_rf_res *)resp->data;

 status = le32_to_cpu(hdr->status);

 if (cb_arg->mdaa &&
     !port100_tg_target_activated(dev, hdr->target_activated)) {
  kfree_skb(resp);
  resp = ERR_PTR(-ETIMEDOUT);

  goto exit;
 }

 skb_pull(resp, sizeof(struct port100_tg_comm_rf_res));

 if (status != PORT100_CMD_STATUS_OK) {
  kfree_skb(resp);

  if (status == PORT100_CMD_STATUS_TIMEOUT)
   resp = ERR_PTR(-ETIMEDOUT);
  else
   resp = ERR_PTR(-EIO);
 }

exit:
 cb(dev->nfc_digital_dev, cb_arg->complete_arg, resp);

 kfree(cb_arg);
}
