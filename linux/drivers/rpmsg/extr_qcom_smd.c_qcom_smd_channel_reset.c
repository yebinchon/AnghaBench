
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_channel {scalar_t__ pkt_size; int state; } ;


 int SET_RX_CHANNEL_INFO (struct qcom_smd_channel*,int ,int ) ;
 int SET_TX_CHANNEL_FLAG (struct qcom_smd_channel*,int ,int) ;
 int SET_TX_CHANNEL_INFO (struct qcom_smd_channel*,int ,int ) ;
 int SMD_CHANNEL_CLOSED ;
 int fBLOCKREADINTR ;
 int fCD ;
 int fCTS ;
 int fDSR ;
 int fHEAD ;
 int fRI ;
 int fSTATE ;
 int fTAIL ;
 int head ;
 int qcom_smd_signal_channel (struct qcom_smd_channel*) ;
 int state ;
 int tail ;

__attribute__((used)) static void qcom_smd_channel_reset(struct qcom_smd_channel *channel)
{
 SET_TX_CHANNEL_INFO(channel, state, SMD_CHANNEL_CLOSED);
 SET_TX_CHANNEL_FLAG(channel, fDSR, 0);
 SET_TX_CHANNEL_FLAG(channel, fCTS, 0);
 SET_TX_CHANNEL_FLAG(channel, fCD, 0);
 SET_TX_CHANNEL_FLAG(channel, fRI, 0);
 SET_TX_CHANNEL_FLAG(channel, fHEAD, 0);
 SET_TX_CHANNEL_FLAG(channel, fTAIL, 0);
 SET_TX_CHANNEL_FLAG(channel, fSTATE, 1);
 SET_TX_CHANNEL_FLAG(channel, fBLOCKREADINTR, 1);
 SET_TX_CHANNEL_INFO(channel, head, 0);
 SET_RX_CHANNEL_INFO(channel, tail, 0);

 qcom_smd_signal_channel(channel);

 channel->state = SMD_CHANNEL_CLOSED;
 channel->pkt_size = 0;
}
