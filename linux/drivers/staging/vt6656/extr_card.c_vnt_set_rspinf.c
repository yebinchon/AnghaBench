
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct vnt_private {int dummy; } ;
struct vnt_phy_field {scalar_t__ service; scalar_t__ signal; int len; } ;


 int MAC_REG_RSPINF_B_1 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 int PK_TYPE_11B ;
 int RATE_11M ;
 int RATE_12M ;
 int RATE_18M ;
 int RATE_1M ;
 int RATE_24M ;
 int RATE_2M ;
 int RATE_36M ;
 int RATE_48M ;
 int RATE_54M ;
 int RATE_5M ;
 int RATE_6M ;
 int RATE_9M ;
 int put_unaligned (int ,int *) ;
 int vnt_calculate_ofdm_rate (int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,scalar_t__*) ;
 int vnt_get_cck_rate (struct vnt_private*,int ) ;
 int vnt_get_ofdm_rate (struct vnt_private*,int ) ;
 int vnt_get_phy_field (struct vnt_private*,int,int ,int ,struct vnt_phy_field*) ;

void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
{
 struct vnt_phy_field phy[4];
 u8 tx_rate[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
 u8 rsv_time[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
 u8 data[34];
 int i;


 vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_1M),
     PK_TYPE_11B, &phy[0]);


 vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_2M),
     PK_TYPE_11B, &phy[1]);


 vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_5M),
     PK_TYPE_11B, &phy[2]);


 vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_11M),
     PK_TYPE_11B, &phy[3]);


 vnt_calculate_ofdm_rate(RATE_6M, bb_type, &tx_rate[0], &rsv_time[0]);


 vnt_calculate_ofdm_rate(RATE_9M, bb_type, &tx_rate[1], &rsv_time[1]);


 vnt_calculate_ofdm_rate(RATE_12M, bb_type, &tx_rate[2], &rsv_time[2]);


 vnt_calculate_ofdm_rate(RATE_18M, bb_type, &tx_rate[3], &rsv_time[3]);


 vnt_calculate_ofdm_rate(RATE_24M, bb_type, &tx_rate[4], &rsv_time[4]);


 vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_36M),
    bb_type, &tx_rate[5], &rsv_time[5]);


 vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_48M),
    bb_type, &tx_rate[6], &rsv_time[6]);


 vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_54M),
    bb_type, &tx_rate[7], &rsv_time[7]);


 vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_54M),
    bb_type, &tx_rate[8], &rsv_time[8]);

 put_unaligned(phy[0].len, (u16 *)&data[0]);
 data[2] = phy[0].signal;
 data[3] = phy[0].service;

 put_unaligned(phy[1].len, (u16 *)&data[4]);
 data[6] = phy[1].signal;
 data[7] = phy[1].service;

 put_unaligned(phy[2].len, (u16 *)&data[8]);
 data[10] = phy[2].signal;
 data[11] = phy[2].service;

 put_unaligned(phy[3].len, (u16 *)&data[12]);
 data[14] = phy[3].signal;
 data[15] = phy[3].service;

 for (i = 0; i < 9; i++) {
  data[16 + i * 2] = tx_rate[i];
  data[16 + i * 2 + 1] = rsv_time[i];
 }

 vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_RSPINF_B_1,
   MESSAGE_REQUEST_MACREG, 34, &data[0]);
}
