
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_serial {TYPE_2__* dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_REGISTER ;
 int MCS_RDREQ ;
 int MCS_RD_RTYPE ;
 int MOSCHIP_DEVICE_ID_7810 ;
 int MOSCHIP_DEVICE_ID_7820 ;
 int MOSCHIP_DEVICE_ID_7840 ;
 int MOSCHIP_DEVICE_ID_7843 ;
 int MOS_WDR_TIMEOUT ;
 int VENDOR_READ_LENGTH ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ mos7810_check (struct usb_serial*) ;
 int usb_control_msg (TYPE_2__*,int ,int ,int ,int ,int ,int*,int ,int ) ;
 int usb_rcvctrlpipe (TYPE_2__*,int ) ;
 int usb_set_serial_data (struct usb_serial*,void*) ;

__attribute__((used)) static int mos7840_probe(struct usb_serial *serial,
    const struct usb_device_id *id)
{
 u16 product = le16_to_cpu(serial->dev->descriptor.idProduct);
 u8 *buf;
 int device_type;

 if (product == MOSCHIP_DEVICE_ID_7810 ||
  product == MOSCHIP_DEVICE_ID_7820 ||
  product == MOSCHIP_DEVICE_ID_7843) {
  device_type = product;
  goto out;
 }

 buf = kzalloc(VENDOR_READ_LENGTH, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
   MCS_RDREQ, MCS_RD_RTYPE, 0, GPIO_REGISTER, buf,
   VENDOR_READ_LENGTH, MOS_WDR_TIMEOUT);


 if (buf[0] & 0x01)
  device_type = MOSCHIP_DEVICE_ID_7840;
 else if (mos7810_check(serial))
  device_type = MOSCHIP_DEVICE_ID_7810;
 else
  device_type = MOSCHIP_DEVICE_ID_7820;

 kfree(buf);
out:
 usb_set_serial_data(serial, (void *)(unsigned long)device_type);

 return 0;
}
