
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_serial {TYPE_6__* dev; TYPE_4__* interface; } ;
struct TYPE_11__ {scalar_t__ bInterfaceClass; int bInterfaceNumber; int bNumEndpoints; int bInterfaceProtocol; int bInterfaceSubClass; } ;
struct usb_host_interface {TYPE_5__ desc; TYPE_3__* endpoint; } ;
struct usb_device_id {int driver_info; int idProduct; } ;
struct device {int dummy; } ;
typedef int __u8 ;
struct TYPE_12__ {TYPE_2__* actconfig; struct device dev; } ;
struct TYPE_10__ {int num_altsetting; struct usb_host_interface* altsetting; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_9__ {int desc; } ;
struct TYPE_7__ {int bNumInterfaces; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;


 int ENODEV ;




 int QUECTEL_EC20_PID ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 int handle_quectel_ec20 (struct device*,int) ;
 scalar_t__ usb_endpoint_is_bulk_in (int *) ;
 scalar_t__ usb_endpoint_is_bulk_out (int *) ;
 int usb_set_interface (TYPE_6__*,int,int) ;
 int usb_set_serial_data (struct usb_serial*,void*) ;

__attribute__((used)) static int qcprobe(struct usb_serial *serial, const struct usb_device_id *id)
{
 struct usb_host_interface *intf = serial->interface->cur_altsetting;
 struct device *dev = &serial->dev->dev;
 int retval = -ENODEV;
 __u8 nintf;
 __u8 ifnum;
 int altsetting = -1;
 bool sendsetup = 0;


 if (intf->desc.bInterfaceClass != USB_CLASS_VENDOR_SPEC)
  goto done;

 nintf = serial->dev->actconfig->desc.bNumInterfaces;
 dev_dbg(dev, "Num Interfaces = %d\n", nintf);
 ifnum = intf->desc.bInterfaceNumber;
 dev_dbg(dev, "This Interface = %d\n", ifnum);

 if (nintf == 1) {


  if (serial->interface->num_altsetting == 2)
   intf = &serial->interface->altsetting[1];
  else if (serial->interface->num_altsetting > 2)
   goto done;

  if (intf->desc.bNumEndpoints == 2 &&
      usb_endpoint_is_bulk_in(&intf->endpoint[0].desc) &&
      usb_endpoint_is_bulk_out(&intf->endpoint[1].desc)) {
   dev_dbg(dev, "QDL port found\n");

   if (serial->interface->num_altsetting == 1)
    retval = 0;
   else
    altsetting = 1;
  }
  goto done;

 }


 altsetting = 0;






 switch (id->driver_info) {
 case 131:







  if (nintf < 3 || nintf > 4) {
   dev_err(dev, "unknown number of interfaces: %d\n", nintf);
   altsetting = -1;
   goto done;
  }

  if (ifnum == 0) {
   dev_dbg(dev, "Gobi 1K DM/DIAG interface found\n");
   altsetting = 1;
  } else if (ifnum == 2)
   dev_dbg(dev, "Modem port found\n");
  else
   altsetting = -1;
  break;
 case 130:

  if (nintf == 5 && id->idProduct == QUECTEL_EC20_PID) {
   altsetting = handle_quectel_ec20(dev, ifnum);
   goto done;
  }
  if (nintf < 3 || nintf > 4) {
   dev_err(dev, "unknown number of interfaces: %d\n", nintf);
   altsetting = -1;
   goto done;
  }

  switch (ifnum) {
  case 0:

   altsetting = -1;
   break;
  case 1:
   dev_dbg(dev, "Gobi 2K+ DM/DIAG interface found\n");
   break;
  case 2:
   dev_dbg(dev, "Modem port found\n");
   break;
  case 3:





   dev_dbg(dev, "Gobi 2K+ NMEA GPS interface found\n");
   break;
  }
  break;
 case 128:







  switch (ifnum) {
  case 0:
   dev_dbg(dev, "DM/DIAG interface found\n");
   break;
  case 2:
   dev_dbg(dev, "NMEA GPS interface found\n");
   sendsetup = 1;
   break;
  case 3:
   dev_dbg(dev, "Modem port found\n");
   sendsetup = 1;
   break;
  default:

   altsetting = -1;
   break;
  }
  break;
 case 129:
  switch (intf->desc.bInterfaceProtocol) {

  case 0x07:
  case 0x37:
  case 0x67:

  case 0x08:
  case 0x38:
  case 0x68:

  case 0x09:
  case 0x39:
  case 0x69:

  case 0x16:
  case 0x46:
  case 0x76:
   altsetting = -1;
   break;
  default:
   dev_dbg(dev, "Huawei type serial port found (%02x/%02x/%02x)\n",
    intf->desc.bInterfaceClass,
    intf->desc.bInterfaceSubClass,
    intf->desc.bInterfaceProtocol);
  }
  break;
 default:
  dev_err(dev, "unsupported device layout type: %lu\n",
   id->driver_info);
  break;
 }

done:
 if (altsetting >= 0) {
  retval = usb_set_interface(serial->dev, ifnum, altsetting);
  if (retval < 0) {
   dev_err(dev,
    "Could not set interface, error %d\n",
    retval);
   retval = -ENODEV;
  }
 }

 if (!retval)
  usb_set_serial_data(serial, (void *)(unsigned long)sendsetup);

 return retval;
}
