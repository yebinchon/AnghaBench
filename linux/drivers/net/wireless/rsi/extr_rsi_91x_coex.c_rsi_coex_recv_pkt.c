
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsi_common {int hibernate_resume; } ;



 int INFO_ZONE ;
 size_t RSI_RX_DESC_MSG_TYPE_OFFSET ;

 int rsi_dbg (int ,char*) ;
 int rsi_handle_card_ready (struct rsi_common*,int*) ;
 int rsi_mgmt_pkt_recv (struct rsi_common*,int*) ;

int rsi_coex_recv_pkt(struct rsi_common *common, u8 *msg)
{
 u8 msg_type = msg[RSI_RX_DESC_MSG_TYPE_OFFSET];

 switch (msg_type) {
 case 129:
  rsi_dbg(INFO_ZONE, "common card ready received\n");
  common->hibernate_resume = 0;
  rsi_handle_card_ready(common, msg);
  break;
 case 128:
  rsi_dbg(INFO_ZONE, "sleep notify received\n");
  rsi_mgmt_pkt_recv(common, msg);
  break;
 }

 return 0;
}
