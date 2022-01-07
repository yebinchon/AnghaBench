
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int bb_rx_conf; scalar_t__ short_slot_time; } ;


 int MESSAGE_REQUEST_BBREG ;
 int vnt_control_out_u8 (struct vnt_private*,int ,int,int) ;

void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
{
 vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xE7, data);


 if (priv->short_slot_time)
  priv->bb_rx_conf &= 0xdf;
 else
  priv->bb_rx_conf |= 0x20;

 vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a, priv->bb_rx_conf);
}
