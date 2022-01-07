
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vnt_private {int bb_rx_conf; } ;






 int MESSAGE_TYPE_SET_ANTMD ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;

int vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode)
{
 switch (antenna_mode) {
 case 129:
 case 128:
  break;
 case 131:
  priv->bb_rx_conf &= 0xFC;
  break;
 case 130:
  priv->bb_rx_conf &= 0xFE;
  priv->bb_rx_conf |= 0x02;
  break;
 }

 return vnt_control_out(priv, MESSAGE_TYPE_SET_ANTMD,
          (u16)antenna_mode, 0, 0, ((void*)0));
}
