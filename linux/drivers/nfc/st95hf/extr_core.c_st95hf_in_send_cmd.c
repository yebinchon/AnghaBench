
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int rats; int complete_cb; void* cb_usrarg; struct sk_buff* skb_resp; } ;
struct st95hf_context {int current_rf_tech; int exchange_lock; TYPE_2__* nfcdev; int spicontext; TYPE_1__ complete_cb_arg; int sendrcv_trflag; } ;
struct sk_buff {int len; int* data; } ;
struct nfc_digital_dev {scalar_t__ curr_protocol; } ;
typedef int nfc_digital_cmd_complete_t ;
struct TYPE_4__ {int dev; } ;


 int ASYNC ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISO14443A_RATS_REQ ;
 int MAX_RESPONSE_BUFFER_SIZE ;



 scalar_t__ NFC_PROTO_ISO14443 ;
 int SEND_RECEIVE_CMD ;
 int ST95HF_COMMAND_SEND ;
 int WARN (int,char*) ;
 int dev_err (int *,char*,int) ;
 int down_killable (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nfc_alloc_recv_skb (int ,int ) ;
 struct st95hf_context* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int ) ;
 int st95hf_spi_send (int *,int*,int,int ) ;
 int up (int *) ;

__attribute__((used)) static int st95hf_in_send_cmd(struct nfc_digital_dev *ddev,
         struct sk_buff *skb,
         u16 timeout,
         nfc_digital_cmd_complete_t cb,
         void *arg)
{
 struct st95hf_context *stcontext = nfc_digital_get_drvdata(ddev);
 int rc;
 struct sk_buff *skb_resp;
 int len_data_to_tag = 0;

 skb_resp = nfc_alloc_recv_skb(MAX_RESPONSE_BUFFER_SIZE, GFP_KERNEL);
 if (!skb_resp) {
  rc = -ENOMEM;
  goto error;
 }

 switch (stcontext->current_rf_tech) {
 case 130:
  len_data_to_tag = skb->len + 1;
  skb_put_u8(skb, stcontext->sendrcv_trflag);
  break;
 case 129:
 case 128:
  len_data_to_tag = skb->len;
  break;
 default:
  rc = -EINVAL;
  goto free_skb_resp;
 }

 skb_push(skb, 3);
 skb->data[0] = ST95HF_COMMAND_SEND;
 skb->data[1] = SEND_RECEIVE_CMD;
 skb->data[2] = len_data_to_tag;

 stcontext->complete_cb_arg.skb_resp = skb_resp;
 stcontext->complete_cb_arg.cb_usrarg = arg;
 stcontext->complete_cb_arg.complete_cb = cb;

 if ((skb->data[3] == ISO14443A_RATS_REQ) &&
     ddev->curr_protocol == NFC_PROTO_ISO14443)
  stcontext->complete_cb_arg.rats = 1;






 rc = down_killable(&stcontext->exchange_lock);
 if (rc) {
  WARN(1, "Semaphore is not found up in st95hf_in_send_cmd\n");
  return rc;
 }

 rc = st95hf_spi_send(&stcontext->spicontext, skb->data,
        skb->len,
        ASYNC);
 if (rc) {
  dev_err(&stcontext->nfcdev->dev,
   "Error %d trying to perform data_exchange", rc);

  up(&stcontext->exchange_lock);
  goto free_skb_resp;
 }

 kfree_skb(skb);

 return rc;

free_skb_resp:
 kfree_skb(skb_resp);
error:
 return rc;
}
