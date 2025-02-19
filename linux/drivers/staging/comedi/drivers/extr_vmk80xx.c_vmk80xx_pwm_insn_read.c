
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {unsigned char* usb_tx_buf; unsigned char* usb_rx_buf; int limit_sem; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct vmk80xx_private* private; } ;


 unsigned char VMK8061_CMD_RD_PWM ;
 int VMK8061_PWM_REG1 ;
 int VMK8061_PWM_REG2 ;
 int down (int *) ;
 int up (int *) ;
 scalar_t__ vmk80xx_read_packet (struct comedi_device*) ;

__attribute__((used)) static int vmk80xx_pwm_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct vmk80xx_private *devpriv = dev->private;
 unsigned char *tx_buf;
 unsigned char *rx_buf;
 int reg[2];
 int n;

 down(&devpriv->limit_sem);

 tx_buf = devpriv->usb_tx_buf;
 rx_buf = devpriv->usb_rx_buf;

 reg[0] = VMK8061_PWM_REG1;
 reg[1] = VMK8061_PWM_REG2;

 tx_buf[0] = VMK8061_CMD_RD_PWM;

 for (n = 0; n < insn->n; n++) {
  if (vmk80xx_read_packet(dev))
   break;

  data[n] = rx_buf[reg[0]] + 4 * rx_buf[reg[1]];
 }

 up(&devpriv->limit_sem);

 return n;
}
