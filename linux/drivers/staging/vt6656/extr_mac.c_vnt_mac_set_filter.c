
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct vnt_private {int dummy; } ;
typedef int le_mc ;
typedef int __le64 ;


 int MAC_REG_MAR0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 int cpu_to_le64 (int ) ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,int *) ;

void vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
{
 __le64 le_mc = cpu_to_le64(mc_filter);

 vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_MAR0,
   MESSAGE_REQUEST_MACREG, sizeof(le_mc), (u8 *)&le_mc);
}
