
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {TYPE_1__* usb; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int vnt_control_out (struct vnt_private*,int,int,int,int ,int *) ;

int vnt_firmware_branch_to_sram(struct vnt_private *priv)
{
 dev_dbg(&priv->usb->dev, "---->Branch to Sram\n");

 return vnt_control_out(priv, 1, 0x1200, 0x0000, 0, ((void*)0));
}
