
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt3k_private {int ai_front; int ai_rear; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; struct dt3k_private* private; } ;


 scalar_t__ DPR_ADC_BUFFER ;
 scalar_t__ DPR_AD_BUF_FRONT ;
 scalar_t__ DPR_AD_BUF_REAR ;
 int DPR_AI_FIFO_DEPTH ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 void* readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void dt3k_ai_empty_fifo(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 struct dt3k_private *devpriv = dev->private;
 int front;
 int rear;
 int count;
 int i;
 unsigned short data;

 front = readw(dev->mmio + DPR_AD_BUF_FRONT);
 count = front - devpriv->ai_front;
 if (count < 0)
  count += DPR_AI_FIFO_DEPTH;

 rear = devpriv->ai_rear;

 for (i = 0; i < count; i++) {
  data = readw(dev->mmio + DPR_ADC_BUFFER + rear);
  comedi_buf_write_samples(s, &data, 1);
  rear++;
  if (rear >= DPR_AI_FIFO_DEPTH)
   rear = 0;
 }

 devpriv->ai_rear = rear;
 writew(rear, dev->mmio + DPR_AD_BUF_REAR);
}
