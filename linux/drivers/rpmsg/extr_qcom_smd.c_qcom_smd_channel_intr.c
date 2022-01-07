
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_channel {int remote_state; scalar_t__ state; int pkt_size; int fblockread_event; int state_change_event; } ;
typedef int pktlen ;
typedef int __le32 ;


 int GET_RX_CHANNEL_FLAG (struct qcom_smd_channel*,int ) ;
 int GET_RX_CHANNEL_INFO (struct qcom_smd_channel*,int ) ;
 int GET_TX_CHANNEL_FLAG (struct qcom_smd_channel*,int ) ;
 int SET_RX_CHANNEL_FLAG (struct qcom_smd_channel*,int ,int) ;
 scalar_t__ SMD_CHANNEL_OPENED ;
 int SMD_PACKET_HEADER_LEN ;
 int fBLOCKREADINTR ;
 int fHEAD ;
 int fSTATE ;
 int fTAIL ;
 int le32_to_cpu (int ) ;
 int qcom_smd_channel_advance (struct qcom_smd_channel*,int) ;
 int qcom_smd_channel_get_rx_avail (struct qcom_smd_channel*) ;
 int qcom_smd_channel_peek (struct qcom_smd_channel*,int *,int) ;
 int qcom_smd_channel_recv_single (struct qcom_smd_channel*) ;
 int qcom_smd_signal_channel (struct qcom_smd_channel*) ;
 int state ;
 int wake_up_interruptible_all (int *) ;
 int wmb () ;

__attribute__((used)) static bool qcom_smd_channel_intr(struct qcom_smd_channel *channel)
{
 bool need_state_scan = 0;
 int remote_state;
 __le32 pktlen;
 int avail;
 int ret;


 remote_state = GET_RX_CHANNEL_INFO(channel, state);
 if (remote_state != channel->remote_state) {
  channel->remote_state = remote_state;
  need_state_scan = 1;

  wake_up_interruptible_all(&channel->state_change_event);
 }

 SET_RX_CHANNEL_FLAG(channel, fSTATE, 0);


 if (!GET_TX_CHANNEL_FLAG(channel, fBLOCKREADINTR))
  wake_up_interruptible_all(&channel->fblockread_event);


 if (channel->state != SMD_CHANNEL_OPENED)
  goto out;


 SET_RX_CHANNEL_FLAG(channel, fHEAD, 0);


 for (;;) {
  avail = qcom_smd_channel_get_rx_avail(channel);

  if (!channel->pkt_size && avail >= SMD_PACKET_HEADER_LEN) {
   qcom_smd_channel_peek(channel, &pktlen, sizeof(pktlen));
   qcom_smd_channel_advance(channel, SMD_PACKET_HEADER_LEN);
   channel->pkt_size = le32_to_cpu(pktlen);
  } else if (channel->pkt_size && avail >= channel->pkt_size) {
   ret = qcom_smd_channel_recv_single(channel);
   if (ret)
    break;
  } else {
   break;
  }
 }


 SET_RX_CHANNEL_FLAG(channel, fTAIL, 1);


 if (!GET_RX_CHANNEL_FLAG(channel, fBLOCKREADINTR)) {

  wmb();

  qcom_smd_signal_channel(channel);
 }

out:
 return need_state_scan;
}
