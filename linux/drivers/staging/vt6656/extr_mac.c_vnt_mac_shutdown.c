
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int MESSAGE_TYPE_MACSHUTDOWN ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;

void vnt_mac_shutdown(struct vnt_private *priv)
{
 vnt_control_out(priv, MESSAGE_TYPE_MACSHUTDOWN, 0, 0, 0, ((void*)0));
}
