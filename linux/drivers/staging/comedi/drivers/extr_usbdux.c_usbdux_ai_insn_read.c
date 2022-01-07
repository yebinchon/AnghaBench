
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int mut; int * insn_buf; int * dux_commands; scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbdux_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EBUSY ;
 int USBDUX_CMD_SINGLE_AI ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int create_adc_command (unsigned int,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int receive_dux_commands (struct comedi_device*,int ) ;
 int send_dux_commands (struct comedi_device*,int ) ;

__attribute__((used)) static int usbdux_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct usbdux_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val;
 int ret = -EBUSY;
 int i;

 mutex_lock(&devpriv->mut);

 if (devpriv->ai_cmd_running)
  goto ai_read_exit;


 devpriv->dux_commands[1] = create_adc_command(chan, range);


 ret = send_dux_commands(dev, USBDUX_CMD_SINGLE_AI);
 if (ret < 0)
  goto ai_read_exit;

 for (i = 0; i < insn->n; i++) {
  ret = receive_dux_commands(dev, USBDUX_CMD_SINGLE_AI);
  if (ret < 0)
   goto ai_read_exit;

  val = le16_to_cpu(devpriv->insn_buf[1]);


  if (comedi_range_is_bipolar(s, range))
   val = comedi_offset_munge(s, val);

  data[i] = val;
 }

ai_read_exit:
 mutex_unlock(&devpriv->mut);

 return ret ? ret : insn->n;
}
