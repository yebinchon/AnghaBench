
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EnCFG_BBType_MASK ;
 int MAC_REG_ENCFG0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;

void vnt_mac_set_bb_type(struct vnt_private *priv, u8 type)
{
 u8 data[2];

 data[0] = type;
 data[1] = EnCFG_BBType_MASK;

 vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
   MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
