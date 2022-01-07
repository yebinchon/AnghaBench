
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct usbduxsigma_private {int* dux_commands; int mut; scalar_t__ insn_buf; scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
typedef int __be32 ;


 unsigned int CR_CHAN (int ) ;
 int EBUSY ;
 int USBDUXSIGMA_SINGLE_AD_CMD ;
 int be32_to_cpu (int ) ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,int) ;
 int create_adc_command (unsigned int,void**,void**) ;
 int get_unaligned (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbbuxsigma_send_cmd (struct comedi_device*,int ) ;
 int usbduxsigma_receive_cmd (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxsigma_ai_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct usbduxsigma_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 u8 muxsg0 = 0;
 u8 muxsg1 = 0;
 u8 sysred = 0;
 int ret;
 int i;

 mutex_lock(&devpriv->mut);
 if (devpriv->ai_cmd_running) {
  mutex_unlock(&devpriv->mut);
  return -EBUSY;
 }

 create_adc_command(chan, &muxsg0, &muxsg1);


 devpriv->dux_commands[1] = 0x16;
 devpriv->dux_commands[2] = 0x80;
 devpriv->dux_commands[3] = 0x00;
 devpriv->dux_commands[4] = muxsg0;
 devpriv->dux_commands[5] = muxsg1;
 devpriv->dux_commands[6] = sysred;


 ret = usbbuxsigma_send_cmd(dev, USBDUXSIGMA_SINGLE_AD_CMD);
 if (ret < 0) {
  mutex_unlock(&devpriv->mut);
  return ret;
 }

 for (i = 0; i < insn->n; i++) {
  u32 val;

  ret = usbduxsigma_receive_cmd(dev, USBDUXSIGMA_SINGLE_AD_CMD);
  if (ret < 0) {
   mutex_unlock(&devpriv->mut);
   return ret;
  }


  val = be32_to_cpu(get_unaligned((__be32
       *)(devpriv->insn_buf + 1)));
  val &= 0x00ffffff;
  data[i] = comedi_offset_munge(s, val);
 }
 mutex_unlock(&devpriv->mut);

 return insn->n;
}
