
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dev; int mbox_chan; } ;
struct glink_msg {int param2; int param1; int cmd; } ;
typedef int msg ;
typedef int irqreturn_t ;


 int ALIGN (int,int) ;
 int EINVAL ;
 int IRQ_HANDLED ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int mbox_client_txdone (int ,int ) ;
 int mbox_send_message (int ,int *) ;
 int qcom_glink_handle_intent (struct qcom_glink*,unsigned int,unsigned int,unsigned int) ;
 int qcom_glink_handle_intent_req_ack (struct qcom_glink*,unsigned int,unsigned int) ;
 int qcom_glink_handle_rx_done (struct qcom_glink*,unsigned int,unsigned int,int) ;
 int qcom_glink_rx_advance (struct qcom_glink*,int ) ;
 unsigned int qcom_glink_rx_avail (struct qcom_glink*) ;
 int qcom_glink_rx_data (struct qcom_glink*,unsigned int) ;
 int qcom_glink_rx_defer (struct qcom_glink*,unsigned int) ;
 int qcom_glink_rx_open_ack (struct qcom_glink*,unsigned int) ;
 int qcom_glink_rx_peak (struct qcom_glink*,struct glink_msg*,int ,int) ;

__attribute__((used)) static irqreturn_t qcom_glink_native_intr(int irq, void *data)
{
 struct qcom_glink *glink = data;
 struct glink_msg msg;
 unsigned int param1;
 unsigned int param2;
 unsigned int avail;
 unsigned int cmd;
 int ret = 0;

 for (;;) {
  avail = qcom_glink_rx_avail(glink);
  if (avail < sizeof(msg))
   break;

  qcom_glink_rx_peak(glink, &msg, 0, sizeof(msg));

  cmd = le16_to_cpu(msg.cmd);
  param1 = le16_to_cpu(msg.param1);
  param2 = le32_to_cpu(msg.param2);

  switch (cmd) {
  case 129:
  case 128:
  case 141:
  case 140:
  case 133:
   ret = qcom_glink_rx_defer(glink, 0);
   break;
  case 137:
   ret = qcom_glink_rx_open_ack(glink, param1);
   qcom_glink_rx_advance(glink, ALIGN(sizeof(msg), 8));
   break;
  case 138:
   ret = qcom_glink_rx_defer(glink, param2);
   break;
  case 131:
  case 130:
   ret = qcom_glink_rx_data(glink, avail);
   break;
  case 136:
   qcom_glink_rx_advance(glink, ALIGN(sizeof(msg), 8));

   mbox_send_message(glink->mbox_chan, ((void*)0));
   mbox_client_txdone(glink->mbox_chan, 0);
   break;
  case 139:
   qcom_glink_handle_intent(glink, param1, param2, avail);
   break;
  case 135:
   qcom_glink_handle_rx_done(glink, param1, param2, 0);
   qcom_glink_rx_advance(glink, ALIGN(sizeof(msg), 8));
   break;
  case 134:
   qcom_glink_handle_rx_done(glink, param1, param2, 1);
   qcom_glink_rx_advance(glink, ALIGN(sizeof(msg), 8));
   break;
  case 132:
   qcom_glink_handle_intent_req_ack(glink, param1, param2);
   qcom_glink_rx_advance(glink, ALIGN(sizeof(msg), 8));
   break;
  default:
   dev_err(glink->dev, "unhandled rx cmd: %d\n", cmd);
   ret = -EINVAL;
   break;
  }

  if (ret)
   break;
 }

 return IRQ_HANDLED;
}
