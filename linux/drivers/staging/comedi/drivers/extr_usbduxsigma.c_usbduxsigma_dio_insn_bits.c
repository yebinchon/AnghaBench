
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {int* dux_commands; int* insn_buf; int mut; } ;
struct comedi_subdevice {int io_bits; int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 int USBDUXSIGMA_DIO_BITS_CMD ;
 int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;
 int usbduxsigma_receive_cmd (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxsigma_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct usbduxsigma_private *devpriv = dev->private;
 int ret;

 mutex_lock(&devpriv->mut);

 comedi_dio_update_state(s, data);


 devpriv->dux_commands[1] = s->io_bits & 0xff;
 devpriv->dux_commands[4] = s->state & 0xff;
 devpriv->dux_commands[2] = (s->io_bits >> 8) & 0xff;
 devpriv->dux_commands[5] = (s->state >> 8) & 0xff;
 devpriv->dux_commands[3] = (s->io_bits >> 16) & 0xff;
 devpriv->dux_commands[6] = (s->state >> 16) & 0xff;

 ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_DIO_BITS_CMD);
 if (ret < 0)
  goto done;
 ret = usbduxsigma_receive_cmd(dev, USBDUXSIGMA_DIO_BITS_CMD);
 if (ret < 0)
  goto done;

 s->state = devpriv->insn_buf[1] |
     (devpriv->insn_buf[2] << 8) |
     (devpriv->insn_buf[3] << 16);

 data[1] = s->state;
 ret = insn->n;

done:
 mutex_unlock(&devpriv->mut);

 return ret;
}
