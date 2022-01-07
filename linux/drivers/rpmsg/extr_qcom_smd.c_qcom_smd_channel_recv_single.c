
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {int (* cb ) (int ,void*,size_t,int ,int ) ;int priv; int rpdev; } ;
struct qcom_smd_channel {unsigned int pkt_size; unsigned int fifo_size; void* rx_fifo; void* bounce_buffer; TYPE_1__* qsept; } ;
struct TYPE_2__ {struct rpmsg_endpoint ept; } ;


 unsigned int GET_RX_CHANNEL_INFO (struct qcom_smd_channel*,unsigned int) ;
 int RPMSG_ADDR_ANY ;
 int qcom_smd_channel_advance (struct qcom_smd_channel*,size_t) ;
 size_t qcom_smd_channel_peek (struct qcom_smd_channel*,void*,unsigned int) ;
 int stub1 (int ,void*,size_t,int ,int ) ;

__attribute__((used)) static int qcom_smd_channel_recv_single(struct qcom_smd_channel *channel)
{
 struct rpmsg_endpoint *ept = &channel->qsept->ept;
 unsigned tail;
 size_t len;
 void *ptr;
 int ret;

 tail = GET_RX_CHANNEL_INFO(channel, tail);


 if (tail + channel->pkt_size >= channel->fifo_size) {
  ptr = channel->bounce_buffer;
  len = qcom_smd_channel_peek(channel, ptr, channel->pkt_size);
 } else {
  ptr = channel->rx_fifo + tail;
  len = channel->pkt_size;
 }

 ret = ept->cb(ept->rpdev, ptr, len, ept->priv, RPMSG_ADDR_ANY);
 if (ret < 0)
  return ret;


 qcom_smd_channel_advance(channel, len);

 channel->pkt_size = 0;

 return 0;
}
