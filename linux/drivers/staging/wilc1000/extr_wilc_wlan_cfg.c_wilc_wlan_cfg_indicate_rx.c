
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_cfg_rsp {int seq_no; scalar_t__ type; } ;
struct wilc {int dummy; } ;


 scalar_t__ WILC_CFG_RSP ;
 scalar_t__ WILC_CFG_RSP_STATUS ;
 int wilc_gnrl_async_info_received (struct wilc*,int*,int) ;
 int wilc_network_info_received (struct wilc*,int*,int) ;
 int wilc_scan_complete_received (struct wilc*,int*,int) ;
 int wilc_wlan_parse_info_frame (struct wilc*,int*) ;
 int wilc_wlan_parse_response_frame (struct wilc*,int*,int) ;

void wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
          struct wilc_cfg_rsp *rsp)
{
 u8 msg_type;
 u8 msg_id;

 msg_type = frame[0];
 msg_id = frame[1];
 frame += 4;
 size -= 4;
 rsp->type = 0;
 switch (msg_type) {
 case 'R':
  wilc_wlan_parse_response_frame(wilc, frame, size);
  rsp->type = WILC_CFG_RSP;
  rsp->seq_no = msg_id;
  break;

 case 'I':
  wilc_wlan_parse_info_frame(wilc, frame);
  rsp->type = WILC_CFG_RSP_STATUS;
  rsp->seq_no = msg_id;

  wilc_gnrl_async_info_received(wilc, frame - 4, size + 4);
  break;

 case 'N':
  wilc_network_info_received(wilc, frame - 4, size + 4);
  break;

 case 'S':
  wilc_scan_complete_received(wilc, frame - 4, size + 4);
  break;

 default:
  rsp->seq_no = msg_id;
  break;
 }
}
