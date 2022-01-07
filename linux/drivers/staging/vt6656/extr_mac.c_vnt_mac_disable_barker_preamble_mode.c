
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ EnCFG_BarkerPream ;
 int MAC_REG_ENCFG2 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,scalar_t__*) ;

void vnt_mac_disable_barker_preamble_mode(struct vnt_private *priv)
{
 u8 data[2];

 data[0] = 0;
 data[1] = EnCFG_BarkerPream;

 vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG2,
   MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
