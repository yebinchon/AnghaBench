
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_channel {int fifo_size; } ;


 unsigned int GET_RX_CHANNEL_INFO (struct qcom_smd_channel*,unsigned int) ;

__attribute__((used)) static size_t qcom_smd_channel_get_rx_avail(struct qcom_smd_channel *channel)
{
 unsigned head;
 unsigned tail;

 head = GET_RX_CHANNEL_INFO(channel, head);
 tail = GET_RX_CHANNEL_INFO(channel, tail);

 return (head - tail) & (channel->fifo_size - 1);
}
