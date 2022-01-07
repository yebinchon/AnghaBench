
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 int vnt_control_out (struct vnt_private*,int ,scalar_t__,int ,int ,scalar_t__*) ;

void vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word)
{
 u8 data[2];

 data[0] = (u8)(word & 0xff);
 data[1] = (u8)(word >> 8);

 vnt_control_out(priv, MESSAGE_TYPE_WRITE, reg_ofs,
   MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
