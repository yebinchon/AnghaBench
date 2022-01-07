
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct vnt_private {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int MAC_REG_BI ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,scalar_t__*) ;

void vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval)
{
 u8 data[2];

 data[0] = (u8)(interval & 0xff);
 data[1] = (u8)(interval >> 8);

 vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_BI,
   MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
}
