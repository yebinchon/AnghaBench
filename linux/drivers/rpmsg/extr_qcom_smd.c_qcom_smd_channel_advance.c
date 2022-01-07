
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_channel {int fifo_size; } ;


 unsigned int GET_RX_CHANNEL_INFO (struct qcom_smd_channel*,unsigned int) ;
 int SET_RX_CHANNEL_INFO (struct qcom_smd_channel*,unsigned int,unsigned int) ;

__attribute__((used)) static void qcom_smd_channel_advance(struct qcom_smd_channel *channel,
         size_t count)
{
 unsigned tail;

 tail = GET_RX_CHANNEL_INFO(channel, tail);
 tail += count;
 tail &= (channel->fifo_size - 1);
 SET_RX_CHANNEL_INFO(channel, tail, tail);
}
