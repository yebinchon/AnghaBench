
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct ch341_private {int mcr; int lcr; } ;


 int CH341_REQ_READ_VERSION ;
 int CH341_REQ_SERIAL_INIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ch341_control_in (struct usb_device*,int ,int ,int ,char*,unsigned int const) ;
 int ch341_control_out (struct usb_device*,int ,int ,int ) ;
 int ch341_set_baudrate_lcr (struct usb_device*,struct ch341_private*,int ) ;
 int ch341_set_handshake (struct usb_device*,int ) ;
 int dev_dbg (int *,char*,char) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int const,int ) ;

__attribute__((used)) static int ch341_configure(struct usb_device *dev, struct ch341_private *priv)
{
 const unsigned int size = 2;
 char *buffer;
 int r;

 buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;


 r = ch341_control_in(dev, CH341_REQ_READ_VERSION, 0, 0, buffer, size);
 if (r < 0)
  goto out;
 dev_dbg(&dev->dev, "Chip version: 0x%02x\n", buffer[0]);

 r = ch341_control_out(dev, CH341_REQ_SERIAL_INIT, 0, 0);
 if (r < 0)
  goto out;

 r = ch341_set_baudrate_lcr(dev, priv, priv->lcr);
 if (r < 0)
  goto out;

 r = ch341_set_handshake(dev, priv->mcr);

out: kfree(buffer);
 return r;
}
