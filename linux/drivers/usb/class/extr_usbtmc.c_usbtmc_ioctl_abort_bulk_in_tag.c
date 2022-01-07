
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbtmc_device_data {int bulk_in; int usb_dev; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DUMP_PREFIX_NONE ;
 int EAGAIN ;
 int ENOMEM ;
 int ENOMSG ;
 int EPERM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int USBTMC_BUFSIZE ;
 int USBTMC_MAX_READS_TO_CLEAR_BULK_IN ;
 int USBTMC_REQUEST_CHECK_ABORT_BULK_IN_STATUS ;
 int USBTMC_REQUEST_INITIATE_ABORT_BULK_IN ;
 int USBTMC_STATUS_FAILED ;
 int USBTMC_STATUS_PENDING ;
 int USBTMC_STATUS_SUCCESS ;
 int USBTMC_STATUS_TRANSFER_NOT_IN_PROGRESS ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_ENDPOINT ;
 int USB_TYPE_CLASS ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int print_hex_dump_debug (char*,int ,int,int,int*,int,int) ;
 int usb_bulk_msg (int ,int ,int*,int,int*,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int*,int,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int usbtmc_ioctl_abort_bulk_in_tag(struct usbtmc_device_data *data,
       u8 tag)
{
 u8 *buffer;
 struct device *dev;
 int rv;
 int n;
 int actual;

 dev = &data->intf->dev;
 buffer = kmalloc(USBTMC_BUFSIZE, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_INITIATE_ABORT_BULK_IN,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT,
        tag, data->bulk_in,
        buffer, 2, USB_CTRL_GET_TIMEOUT);

 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "INITIATE_ABORT_BULK_IN returned %x with tag %02x\n",
  buffer[0], buffer[1]);

 if (buffer[0] == USBTMC_STATUS_FAILED) {

  rv = 0;
  goto exit;
 }

 if (buffer[0] == USBTMC_STATUS_TRANSFER_NOT_IN_PROGRESS) {






  rv = -ENOMSG;
  goto exit;
 }

 if (buffer[0] != USBTMC_STATUS_SUCCESS) {
  dev_err(dev, "INITIATE_ABORT_BULK_IN returned %x\n",
   buffer[0]);
  rv = -EPERM;
  goto exit;
 }

 n = 0;

usbtmc_abort_bulk_in_status:
 dev_dbg(dev, "Reading from bulk in EP\n");


 actual = 0;
 rv = usb_bulk_msg(data->usb_dev,
     usb_rcvbulkpipe(data->usb_dev,
       data->bulk_in),
     buffer, USBTMC_BUFSIZE,
     &actual, 300);

 print_hex_dump_debug("usbtmc ", DUMP_PREFIX_NONE, 16, 1,
        buffer, actual, 1);

 n++;

 if (rv < 0) {
  dev_err(dev, "usb_bulk_msg returned %d\n", rv);
  if (rv != -ETIMEDOUT)
   goto exit;
 }

 if (actual == USBTMC_BUFSIZE)
  goto usbtmc_abort_bulk_in_status;

 if (n >= USBTMC_MAX_READS_TO_CLEAR_BULK_IN) {
  dev_err(dev, "Couldn't clear device buffer within %d cycles\n",
   USBTMC_MAX_READS_TO_CLEAR_BULK_IN);
  rv = -EPERM;
  goto exit;
 }

 rv = usb_control_msg(data->usb_dev,
        usb_rcvctrlpipe(data->usb_dev, 0),
        USBTMC_REQUEST_CHECK_ABORT_BULK_IN_STATUS,
        USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT,
        0, data->bulk_in, buffer, 0x08,
        USB_CTRL_GET_TIMEOUT);

 if (rv < 0) {
  dev_err(dev, "usb_control_msg returned %d\n", rv);
  goto exit;
 }

 dev_dbg(dev, "CHECK_ABORT_BULK_IN returned %x\n", buffer[0]);

 if (buffer[0] == USBTMC_STATUS_SUCCESS) {
  rv = 0;
  goto exit;
 }

 if (buffer[0] != USBTMC_STATUS_PENDING) {
  dev_err(dev, "CHECK_ABORT_BULK_IN returned %x\n", buffer[0]);
  rv = -EPERM;
  goto exit;
 }

 if ((buffer[1] & 1) > 0) {

  goto usbtmc_abort_bulk_in_status;
 }


 rv = -EAGAIN;
exit:
 kfree(buffer);
 return rv;
}
