
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx_status {int frame_status; } ;






 int ZD_CCK_RATE_11M ;
 int ZD_CCK_RATE_1M ;
 int ZD_CCK_RATE_2M ;
 int ZD_CCK_RATE_5_5M ;
 int ZD_RX_OFDM ;
 int zd_cck_plcp_header_signal (void const*) ;
 int zd_rate_from_ofdm_plcp_header (void const*) ;

u8 zd_rx_rate(const void *rx_frame, const struct rx_status *status)
{
 u8 zd_rate;
 if (status->frame_status & ZD_RX_OFDM) {
  zd_rate = zd_rate_from_ofdm_plcp_header(rx_frame);
 } else {
  switch (zd_cck_plcp_header_signal(rx_frame)) {
  case 130:
   zd_rate = ZD_CCK_RATE_1M;
   break;
  case 129:
   zd_rate = ZD_CCK_RATE_2M;
   break;
  case 128:
   zd_rate = ZD_CCK_RATE_5_5M;
   break;
  case 131:
   zd_rate = ZD_CCK_RATE_11M;
   break;
  default:
   zd_rate = 0;
  }
 }

 return zd_rate;
}
