
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vnt_private {int dummy; } ;


 int CB_MAX_CHANNEL ;
 int MACCR_CLRNAV ;
 int MAC_REG_CHANNEL ;
 int MAC_REG_MACCR ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_SELECT_CHANNEL ;
 int vnt_control_out (struct vnt_private*,int ,int,int ,int ,int *) ;
 int vnt_control_out_u8 (struct vnt_private*,int ,int ,int ) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;

void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
{
 if (connection_channel > CB_MAX_CHANNEL || !connection_channel)
  return;


 vnt_mac_reg_bits_on(priv, MAC_REG_MACCR, MACCR_CLRNAV);


 vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL, 0xb0);

 vnt_control_out(priv, MESSAGE_TYPE_SELECT_CHANNEL,
   connection_channel, 0, 0, ((void*)0));

 vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG, MAC_REG_CHANNEL,
      (u8)(connection_channel | 0x80));
}
