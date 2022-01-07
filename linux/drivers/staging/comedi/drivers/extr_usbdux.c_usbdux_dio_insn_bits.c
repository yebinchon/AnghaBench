
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int mut; int * insn_buf; int * dux_commands; } ;
struct comedi_subdevice {int state; int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int USBDUX_CMD_DIO_BITS ;
 int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int receive_dux_commands (struct comedi_device*,int ) ;
 int send_dux_commands (struct comedi_device*,int ) ;

__attribute__((used)) static int usbdux_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct usbdux_private *devpriv = dev->private;
 int ret;

 mutex_lock(&devpriv->mut);

 comedi_dio_update_state(s, data);


 devpriv->dux_commands[1] = s->io_bits;
 devpriv->dux_commands[2] = s->state;





 ret = send_dux_commands(dev, USBDUX_CMD_DIO_BITS);
 if (ret < 0)
  goto dio_exit;
 ret = receive_dux_commands(dev, USBDUX_CMD_DIO_BITS);
 if (ret < 0)
  goto dio_exit;

 data[1] = le16_to_cpu(devpriv->insn_buf[1]);

dio_exit:
 mutex_unlock(&devpriv->mut);

 return ret ? ret : insn->n;
}
