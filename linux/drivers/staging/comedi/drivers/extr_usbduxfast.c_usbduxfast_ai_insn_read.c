
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct usbduxfast_private {int mut; scalar_t__ inbuf; scalar_t__ ai_cmd_running; } ;
struct usb_device {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int class_dev; struct usbduxfast_private* private; } ;


 int BULKINEP ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EBUSY ;
 int EINVAL ;
 int PACKETS_TO_IGNORE ;
 int SENDADCOMMANDS ;
 int SIZEINBUF ;
 struct usb_device* comedi_to_usb_dev (struct comedi_device*) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (struct usb_device*,int ,scalar_t__,int ,int*,int) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usbduxfast_cmd_data (struct comedi_device*,int,int,int,int,int) ;
 int usbduxfast_send_cmd (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxfast_ai_insn_read(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct usb_device *usb = comedi_to_usb_dev(dev);
 struct usbduxfast_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 u8 rngmask = range ? (0xff - 0x04) : 0xff;
 int i, j, n, actual_length;
 int ret;

 mutex_lock(&devpriv->mut);

 if (devpriv->ai_cmd_running) {
  dev_err(dev->class_dev,
   "ai_insn_read not possible, async cmd is running\n");
  mutex_unlock(&devpriv->mut);
  return -EBUSY;
 }





 usbduxfast_cmd_data(dev, 0, 0x01, 0x02, rngmask, 0x00);


 usbduxfast_cmd_data(dev, 1, 0x0c, 0x00, 0xfe & rngmask, 0x00);
 usbduxfast_cmd_data(dev, 2, 0x01, 0x00, 0xfe & rngmask, 0x00);
 usbduxfast_cmd_data(dev, 3, 0x01, 0x00, 0xfe & rngmask, 0x00);
 usbduxfast_cmd_data(dev, 4, 0x01, 0x00, 0xfe & rngmask, 0x00);


 usbduxfast_cmd_data(dev, 5, 0x0c, 0x00, rngmask, 0x00);
 usbduxfast_cmd_data(dev, 6, 0x01, 0x00, rngmask, 0x00);

 ret = usbduxfast_send_cmd(dev, SENDADCOMMANDS);
 if (ret < 0) {
  mutex_unlock(&devpriv->mut);
  return ret;
 }

 for (i = 0; i < PACKETS_TO_IGNORE; i++) {
  ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, BULKINEP),
       devpriv->inbuf, SIZEINBUF,
       &actual_length, 10000);
  if (ret < 0) {
   dev_err(dev->class_dev, "insn timeout, no data\n");
   mutex_unlock(&devpriv->mut);
   return ret;
  }
 }

 for (i = 0; i < insn->n;) {
  ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, BULKINEP),
       devpriv->inbuf, SIZEINBUF,
       &actual_length, 10000);
  if (ret < 0) {
   dev_err(dev->class_dev, "insn data error: %d\n", ret);
   mutex_unlock(&devpriv->mut);
   return ret;
  }
  n = actual_length / sizeof(u16);
  if ((n % 16) != 0) {
   dev_err(dev->class_dev, "insn data packet corrupted\n");
   mutex_unlock(&devpriv->mut);
   return -EINVAL;
  }
  for (j = chan; (j < n) && (i < insn->n); j = j + 16) {
   data[i] = ((u16 *)(devpriv->inbuf))[j];
   i++;
  }
 }

 mutex_unlock(&devpriv->mut);

 return insn->n;
}
