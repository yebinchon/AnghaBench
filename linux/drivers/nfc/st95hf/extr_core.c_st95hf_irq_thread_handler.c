
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* spidev; } ;
struct st95_digital_cmd_complete_arg {int rats; int cb_usrarg; int (* complete_cb ) (int ,int ,struct sk_buff*) ;struct sk_buff* skb_resp; } ;
struct st95hf_context {int rm_lock; int exchange_lock; int ddev; scalar_t__ nfcdev_free; TYPE_2__ spicontext; struct st95_digital_cmd_complete_arg complete_cb_arg; } ;
struct sk_buff {scalar_t__* data; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct device dev; } ;


 int ENODEV ;
 struct sk_buff* ERR_PTR (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN (int,char*) ;
 scalar_t__ WTX_REQ_FROM_TAG ;
 int dev_err (struct device*,char*,int) ;
 int down_trylock (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int st95hf_error_handling (struct st95hf_context*,struct sk_buff*,int) ;
 int st95hf_handle_wtx (struct st95hf_context*,int,scalar_t__) ;
 int st95hf_response_handler (struct st95hf_context*,struct sk_buff*,int) ;
 int st95hf_spi_recv_response (TYPE_2__*,scalar_t__*) ;
 int stub1 (int ,int ,struct sk_buff*) ;
 int stub2 (int ,int ,struct sk_buff*) ;
 int up (int *) ;

__attribute__((used)) static irqreturn_t st95hf_irq_thread_handler(int irq, void *st95hfcontext)
{
 int result = 0;
 int res_len;
 static bool wtx;
 struct device *spidevice;
 struct sk_buff *skb_resp;
 struct st95hf_context *stcontext =
  (struct st95hf_context *)st95hfcontext;
 struct st95_digital_cmd_complete_arg *cb_arg;

 spidevice = &stcontext->spicontext.spidev->dev;
 if (!down_trylock(&stcontext->exchange_lock)) {
  up(&stcontext->exchange_lock);
  WARN(1, "unknown context in ST95HF ISR");
  return IRQ_NONE;
 }

 cb_arg = &stcontext->complete_cb_arg;
 skb_resp = cb_arg->skb_resp;

 mutex_lock(&stcontext->rm_lock);
 res_len = st95hf_spi_recv_response(&stcontext->spicontext,
        skb_resp->data);
 if (res_len < 0) {
  dev_err(spidevice, "TISR spi response err = 0x%x\n", res_len);
  result = res_len;
  goto end;
 }


 if (stcontext->nfcdev_free) {
  result = -ENODEV;
  goto end;
 }

 if (skb_resp->data[2] == WTX_REQ_FROM_TAG) {

  result = st95hf_handle_wtx(stcontext, 1, skb_resp->data[3]);
  if (result)
   goto end;

  wtx = 1;
  mutex_unlock(&stcontext->rm_lock);
  return IRQ_HANDLED;
 }

 result = st95hf_error_handling(stcontext, skb_resp, res_len);
 if (result)
  goto end;

 result = st95hf_response_handler(stcontext, skb_resp, res_len);
 if (result)
  goto end;





 if (wtx) {
  wtx = 0;
  result = st95hf_handle_wtx(stcontext, 0, 0);
  if (result)
   goto end;
 }


 cb_arg->complete_cb(stcontext->ddev, cb_arg->cb_usrarg, skb_resp);


 up(&stcontext->exchange_lock);
 mutex_unlock(&stcontext->rm_lock);

 return IRQ_HANDLED;

end:
 kfree_skb(skb_resp);
 wtx = 0;
 cb_arg->rats = 0;
 skb_resp = ERR_PTR(result);

 cb_arg->complete_cb(stcontext->ddev, cb_arg->cb_usrarg, skb_resp);

 up(&stcontext->exchange_lock);
 mutex_unlock(&stcontext->rm_lock);
 return IRQ_HANDLED;
}
