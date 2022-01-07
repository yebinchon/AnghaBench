
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vnt_private {int firmware_version; TYPE_1__* usb; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int FIRMWARE_VERSION ;
 int MESSAGE_REQUEST_VERSION ;
 int MESSAGE_TYPE_READ ;
 int dev_dbg (int *,char*,...) ;
 int vnt_control_in (struct vnt_private*,int ,int ,int ,int,int *) ;
 int vnt_firmware_branch_to_sram (struct vnt_private*) ;

int vnt_check_firmware_version(struct vnt_private *priv)
{
 int ret = 0;

 ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0,
        MESSAGE_REQUEST_VERSION, 2,
        (u8 *)&priv->firmware_version);
 if (ret) {
  dev_dbg(&priv->usb->dev,
   "Could not get firmware version: %d.\n", ret);
  goto end;
 }

 dev_dbg(&priv->usb->dev, "Firmware Version [%04x]\n",
  priv->firmware_version);

 if (priv->firmware_version == 0xFFFF) {
  dev_dbg(&priv->usb->dev, "In Loader.\n");
  ret = -EINVAL;
  goto end;
 }

 if (priv->firmware_version < FIRMWARE_VERSION) {

  ret = vnt_firmware_branch_to_sram(priv);
  if (ret) {
   dev_dbg(&priv->usb->dev,
    "Could not branch to SRAM: %d.\n", ret);
  } else {
   ret = -EINVAL;
  }
 }

end:
 return ret;
}
