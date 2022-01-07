
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_edge {int dev; } ;
struct qcom_smd_channel {int state; int name; struct qcom_smd_edge* edge; } ;


 int SET_TX_CHANNEL_FLAG (struct qcom_smd_channel*,int ,int) ;
 int SET_TX_CHANNEL_INFO (struct qcom_smd_channel*,int,int) ;
 int SMD_CHANNEL_OPENED ;
 int dev_dbg (int *,char*,int ,int) ;
 int fCD ;
 int fCTS ;
 int fDSR ;
 int fSTATE ;
 int qcom_smd_signal_channel (struct qcom_smd_channel*) ;

__attribute__((used)) static void qcom_smd_channel_set_state(struct qcom_smd_channel *channel,
           int state)
{
 struct qcom_smd_edge *edge = channel->edge;
 bool is_open = state == SMD_CHANNEL_OPENED;

 if (channel->state == state)
  return;

 dev_dbg(&edge->dev, "set_state(%s, %d)\n", channel->name, state);

 SET_TX_CHANNEL_FLAG(channel, fDSR, is_open);
 SET_TX_CHANNEL_FLAG(channel, fCTS, is_open);
 SET_TX_CHANNEL_FLAG(channel, fCD, is_open);

 SET_TX_CHANNEL_INFO(channel, state, state);
 SET_TX_CHANNEL_FLAG(channel, fSTATE, 1);

 channel->state = state;
 qcom_smd_signal_channel(channel);
}
