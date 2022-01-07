
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbtmc_device_data {int bulk_out; int usb_dev; int bulk_in; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DUMP_PREFIX_NONE ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int USBTMC_BUFSIZE ;
 int USBTMC_MAX_READS_TO_CLEAR_BULK_IN ;
 int USBTMC_REQUEST_CHECK_CLEAR_STATUS ;
 int USBTMC_REQUEST_INITIATE_CLEAR ;
 int USBTMC_STATUS_PENDING ;
 int USBTMC_STATUS_SUCCESS ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int msleep (int) ;
 int print_hex_dump_debug (char*,int ,int,int,int*,int,int) ;
 int usb_bulk_msg (int ,int ,int*,int,int*,int ) ;
 int usb_clear_halt (int ,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int usbtmc_ioctl_clear(struct usbtmc_device_data *data)
{
 struct device *dev;
 u8 *buffer;
 int rv;
 int n;
 int actual = 0;

 dev = &data->intf->dev;

 dev_dbg(dev, "Sending INITIATE_CLEAR request\n");

 buffer = kmalloc(USBTMC_BUFSIZE, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_INITIATE_CLEAR,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
        0, 0, buffer, 1, USB_CTRL_GET_TIMEOUT);
 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "INITIATE_CLEAR returned %x\n", buffer[0]);

 if (buffer[0] != USBTMC_STATUS_SUCCESS) {
  dev_err(dev, "INITIATE_CLEAR returned %x\n", buffer[0]);
  rv = -EPERM;
  goto exit;
 }

 n = 0;

usbtmc_clear_check_status:

 dev_dbg(dev, "Sending CHECK_CLEAR_STATUS request\n");

 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_CHECK_CLEAR_STATUS,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
        0, 0, buffer, 2, USB_CTRL_GET_TIMEOUT);
 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "CHECK_CLEAR_STATUS returned %x\n", buffer[0]);

 if (buffer[0] == USBTMC_STATUS_SUCCESS)
  goto usbtmc_clear_bulk_out_halt;

 if (buffer[0] != USBTMC_STATUS_PENDING) {
  dev_err(dev, "CHECK_CLEAR_STATUS returned %x\n", buffer[0]);
  rv = -EPERM;
  goto exit;
 }

 if ((buffer[1] & 1) != 0) {
  do {
   dev_dbg(dev, "Reading from bulk in EP\n");

   actual = 0;
   rv = usb_bulk_msg(data->usb_dev,
       usb_rcvbulkpipe(data->usb_dev,
         data->bulk_in),
       buffer, USBTMC_BUFSIZE,
       &actual, USB_CTRL_GET_TIMEOUT);

   print_hex_dump_debug("usbtmc ", DUMP_PREFIX_NONE,
          16, 1, buffer, actual, 1);

   n++;

   if (rv < 0) {
    dev_err(dev, "usb_control_msg returned %d\n",
     rv);
    goto exit;
   }
  } while ((actual == USBTMC_BUFSIZE) &&
     (n < USBTMC_MAX_READS_TO_CLEAR_BULK_IN));
 } else {

  msleep(50);
  n++;
 }

 if (n >= USBTMC_MAX_READS_TO_CLEAR_BULK_IN) {
  dev_err(dev, "Couldn't clear device buffer within %d cycles\n",
   USBTMC_MAX_READS_TO_CLEAR_BULK_IN);
  rv = -EPERM;
  goto exit;
 }

 goto usbtmc_clear_check_status;

usbtmc_clear_bulk_out_halt:

 rv = usb_clear_halt(data->usb_dev,
       usb_sndbulkpipe(data->usb_dev, data->bulk_out));
 if (rv < 0) {
  dev_err(dev, "usb_clear_halt returned %d\n", rv);
  goto exit;
 }
 rv = 0;

exit:
 kfree(buffer);
 return rv;
}
