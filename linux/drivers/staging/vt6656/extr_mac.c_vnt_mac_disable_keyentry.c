
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int dummy; } ;
typedef int entry_idx ;


 int MESSAGE_TYPE_CLRKEYENTRY ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,int *) ;

void vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
{
 vnt_control_out(priv, MESSAGE_TYPE_CLRKEYENTRY, 0, 0,
   sizeof(entry_idx), &entry_idx);
}
