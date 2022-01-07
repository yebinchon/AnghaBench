
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;


 int MESSAGE_TYPE_WRITE ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,int *) ;

int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 data)
{
 return vnt_control_out(priv, MESSAGE_TYPE_WRITE,
          reg_off, reg, sizeof(u8), &data);
}
