
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;

int vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits)
{
 u8 data[2];

 data[0] = bits;
 data[1] = bits;

 return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, reg_ofs,
          MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
