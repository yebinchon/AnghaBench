
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usbduxsigma_private {int* dux_commands; scalar_t__ insn_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; struct comedi_subdevice* read_subdev; } ;
typedef int __be32 ;


 int USBDUXSIGMA_SINGLE_AD_CMD ;
 int be32_to_cpu (int ) ;
 scalar_t__ comedi_offset_munge (struct comedi_subdevice*,int) ;
 int get_unaligned (int *) ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;
 int usbduxsigma_receive_cmd (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxsigma_getstatusinfo(struct comedi_device *dev, int chan)
{
 struct comedi_subdevice *s = dev->read_subdev;
 struct usbduxsigma_private *devpriv = dev->private;
 u8 sysred;
 u32 val;
 int ret;

 switch (chan) {
 default:
 case 0:
  sysred = 0;
  break;
 case 1:
  sysred = 1;
  break;
 case 2:
  sysred = 4;
  break;
 case 3:
  sysred = 8;
  break;
 case 4:
  sysred = 16;
  break;
 case 5:
  sysred = 32;
  break;
 }

 devpriv->dux_commands[1] = 0x12;
 devpriv->dux_commands[2] = 0x80;
 devpriv->dux_commands[3] = 0x00;
 devpriv->dux_commands[4] = 0;
 devpriv->dux_commands[5] = 0;
 devpriv->dux_commands[6] = sysred;
 ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_SINGLE_AD_CMD);
 if (ret < 0)
  return ret;

 ret = usbduxsigma_receive_cmd(dev, USBDUXSIGMA_SINGLE_AD_CMD);
 if (ret < 0)
  return ret;


 val = be32_to_cpu(get_unaligned((__be32 *)(devpriv->insn_buf + 1)));
 val &= 0x00ffffff;

 return (int)comedi_offset_munge(s, val);
}
