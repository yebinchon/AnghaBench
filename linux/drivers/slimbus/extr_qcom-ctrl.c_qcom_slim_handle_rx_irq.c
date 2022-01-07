
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qcom_slim_ctrl {int wd; int rxwq; scalar_t__ base; int dev; int ctrl; } ;
typedef int irqreturn_t ;


 int DIV_ROUND_UP (scalar_t__,int) ;
 int IRQ_HANDLED ;
 scalar_t__ MGR_INT_CLR ;
 int MGR_INT_RX_MSG_RCVD ;
 scalar_t__ MGR_RX_MSG ;
 scalar_t__ SLIM_HEADER_GET_MC (int) ;
 scalar_t__ SLIM_HEADER_GET_MT (int) ;
 scalar_t__ SLIM_HEADER_GET_RL (int) ;



 scalar_t__ SLIM_MSG_MT_CORE ;
 int __ioread32_copy (int*,scalar_t__,int ) ;
 int dev_err (int ,char*,scalar_t__,...) ;
 int queue_work (int ,int *) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ slim_alloc_rxbuf (struct qcom_slim_ctrl*) ;
 int slim_msg_response (int *,scalar_t__*,scalar_t__,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t qcom_slim_handle_rx_irq(struct qcom_slim_ctrl *ctrl,
        u32 stat)
{
 u32 *rx_buf, pkt[10];
 bool q_rx = 0;
 u8 mc, mt, len;

 pkt[0] = readl_relaxed(ctrl->base + MGR_RX_MSG);
 mt = SLIM_HEADER_GET_MT(pkt[0]);
 len = SLIM_HEADER_GET_RL(pkt[0]);
 mc = SLIM_HEADER_GET_MC(pkt[0]>>8);





 if (mt == SLIM_MSG_MT_CORE && mc == 128) {
  rx_buf = (u32 *)slim_alloc_rxbuf(ctrl);
  if (!rx_buf) {
   dev_err(ctrl->dev, "dropping RX:0x%x due to RX full\n",
     pkt[0]);
   goto rx_ret_irq;
  }
  rx_buf[0] = pkt[0];

 } else {
  rx_buf = pkt;
 }

 __ioread32_copy(rx_buf + 1, ctrl->base + MGR_RX_MSG + 4,
   DIV_ROUND_UP(len, 4));

 switch (mc) {

 case 128:
  q_rx = 1;
  break;
 case 130:
 case 129:
  slim_msg_response(&ctrl->ctrl, (u8 *)(rx_buf + 1),
      (u8)(*rx_buf >> 24), (len - 4));
  break;
 default:
  dev_err(ctrl->dev, "unsupported MC,%x MT:%x\n",
   mc, mt);
  break;
 }
rx_ret_irq:
 writel(MGR_INT_RX_MSG_RCVD, ctrl->base +
         MGR_INT_CLR);
 if (q_rx)
  queue_work(ctrl->rxwq, &ctrl->wd);

 return IRQ_HANDLED;
}
