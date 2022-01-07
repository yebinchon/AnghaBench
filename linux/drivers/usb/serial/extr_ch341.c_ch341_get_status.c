
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct ch341_private {char msr; int lock; } ;


 char CH341_BITS_MODEM_STAT ;
 int CH341_REQ_READ_REG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ch341_control_in (struct usb_device*,int ,int,int ,char*,unsigned int const) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int const,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ch341_get_status(struct usb_device *dev, struct ch341_private *priv)
{
 const unsigned int size = 2;
 char *buffer;
 int r;
 unsigned long flags;

 buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 r = ch341_control_in(dev, CH341_REQ_READ_REG, 0x0706, 0, buffer, size);
 if (r < 0)
  goto out;

 spin_lock_irqsave(&priv->lock, flags);
 priv->msr = (~(*buffer)) & CH341_BITS_MODEM_STAT;
 spin_unlock_irqrestore(&priv->lock, flags);

out: kfree(buffer);
 return r;
}
