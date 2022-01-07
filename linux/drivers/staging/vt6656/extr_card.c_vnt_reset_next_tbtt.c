
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u16 ;
struct vnt_private {int dummy; } ;


 int MESSAGE_REQUEST_TBTT ;
 int MESSAGE_TYPE_SET_TSFTBTT ;
 int vnt_clear_current_tsf (struct vnt_private*) ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,scalar_t__*) ;
 int vnt_get_next_tbtt (int,int ) ;

void vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
{
 u64 next_tbtt = 0;
 u8 data[8];

 vnt_clear_current_tsf(priv);

 next_tbtt = vnt_get_next_tbtt(next_tbtt, beacon_interval);

 data[0] = (u8)next_tbtt;
 data[1] = (u8)(next_tbtt >> 8);
 data[2] = (u8)(next_tbtt >> 16);
 data[3] = (u8)(next_tbtt >> 24);
 data[4] = (u8)(next_tbtt >> 32);
 data[5] = (u8)(next_tbtt >> 40);
 data[6] = (u8)(next_tbtt >> 48);
 data[7] = (u8)(next_tbtt >> 56);

 vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
   MESSAGE_REQUEST_TBTT, 0, 8, data);
}
