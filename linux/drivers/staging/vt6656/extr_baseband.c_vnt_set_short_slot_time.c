
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vnt_private {int bb_rx_conf; scalar_t__* bb_vga; scalar_t__ short_slot_time; } ;


 int MESSAGE_REQUEST_BBREG ;
 int vnt_control_in_u8 (struct vnt_private*,int ,int,scalar_t__*) ;
 int vnt_control_out_u8 (struct vnt_private*,int ,int,int) ;

int vnt_set_short_slot_time(struct vnt_private *priv)
{
 int ret = 0;
 u8 bb_vga = 0;

 if (priv->short_slot_time)
  priv->bb_rx_conf &= 0xdf;
 else
  priv->bb_rx_conf |= 0x20;

 ret = vnt_control_in_u8(priv, MESSAGE_REQUEST_BBREG, 0xe7, &bb_vga);
 if (ret)
  goto end;

 if (bb_vga == priv->bb_vga[0])
  priv->bb_rx_conf |= 0x20;

 ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a,
     priv->bb_rx_conf);

end:
 return ret;
}
