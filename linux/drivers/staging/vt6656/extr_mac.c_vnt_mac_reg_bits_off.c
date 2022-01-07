
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;
 int vnt_control_out (struct vnt_private*,int ,scalar_t__,int ,int ,scalar_t__*) ;

int vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits)
{
 u8 data[2];

 data[0] = 0;
 data[1] = bits;

 return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, reg_ofs,
          MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
