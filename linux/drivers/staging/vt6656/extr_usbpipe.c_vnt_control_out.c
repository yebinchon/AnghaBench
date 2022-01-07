
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct vnt_private {int usb_lock; int usb; int flags; } ;


 int DEVICE_FLAGS_DISCONNECTED ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTL_WAIT ;
 int kfree (int *) ;
 int * kmemdup (int *,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_control_msg (int ,int ,int ,int,scalar_t__,scalar_t__,int *,scalar_t__,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
      u16 index, u16 length, u8 *buffer)
{
 int ret = 0;
 u8 *usb_buffer;

 if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
  ret = -EINVAL;
  goto end;
 }

 mutex_lock(&priv->usb_lock);

 usb_buffer = kmemdup(buffer, length, GFP_KERNEL);
 if (!usb_buffer) {
  ret = -ENOMEM;
  goto end_unlock;
 }

 ret = usb_control_msg(priv->usb,
         usb_sndctrlpipe(priv->usb, 0),
         request, 0x40, value,
         index, usb_buffer, length, USB_CTL_WAIT);

 kfree(usb_buffer);

 if (ret >= 0 && ret < (int)length)
  ret = -EIO;

end_unlock:
 mutex_unlock(&priv->usb_lock);
end:
 return ret;
}
