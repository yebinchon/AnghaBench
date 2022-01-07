
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct vnt_private {int dummy; } ;


 int MESSAGE_REQUEST_TSF ;
 int MESSAGE_TYPE_SET_TSFTBTT ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,scalar_t__*) ;
 int vnt_get_tsf_offset (scalar_t__,int,int) ;

void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
      u64 time_stamp, u64 local_tsf)
{
 u64 tsf_offset = 0;
 u8 data[8];

 tsf_offset = vnt_get_tsf_offset(rx_rate, time_stamp, local_tsf);

 data[0] = (u8)tsf_offset;
 data[1] = (u8)(tsf_offset >> 8);
 data[2] = (u8)(tsf_offset >> 16);
 data[3] = (u8)(tsf_offset >> 24);
 data[4] = (u8)(tsf_offset >> 32);
 data[5] = (u8)(tsf_offset >> 40);
 data[6] = (u8)(tsf_offset >> 48);
 data[7] = (u8)(tsf_offset >> 56);

 vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
   MESSAGE_REQUEST_TSF, 0, 8, data);
}
