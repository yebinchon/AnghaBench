
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsigma_private {int pwm_buf_sz; TYPE_1__* pwm_urb; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct TYPE_2__ {scalar_t__ transfer_buffer; } ;



__attribute__((used)) static void usbduxsigma_pwm_pattern(struct comedi_device *dev,
        struct comedi_subdevice *s,
        unsigned int chan,
        unsigned int value,
        unsigned int sign)
{
 struct usbduxsigma_private *devpriv = dev->private;
 char pwm_mask = (1 << chan);
 char sgn_mask = (16 << chan);
 char *buf = (char *)(devpriv->pwm_urb->transfer_buffer);
 int szbuf = devpriv->pwm_buf_sz;
 int i;

 for (i = 0; i < szbuf; i++) {
  char c = *buf;

  c &= ~pwm_mask;
  if (i < value)
   c |= pwm_mask;
  if (!sign)
   c &= ~sgn_mask;
  else
   c |= sgn_mask;
  *buf++ = c;
 }
}
