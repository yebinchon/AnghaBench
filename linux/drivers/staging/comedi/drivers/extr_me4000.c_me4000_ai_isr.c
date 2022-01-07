
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; int attached; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int ME4000_AI_CTRL_HF_IRQ_RESET ;
 scalar_t__ ME4000_AI_CTRL_REG ;
 unsigned int ME4000_AI_CTRL_SC_IRQ_RESET ;
 int ME4000_AI_FIFO_COUNT ;
 unsigned int ME4000_AI_STATUS_EF_DATA ;
 unsigned int ME4000_AI_STATUS_FF_DATA ;
 unsigned int ME4000_AI_STATUS_HF_DATA ;
 scalar_t__ ME4000_AI_STATUS_REG ;
 int ME4000_IRQ_STATUS_AI_HF ;
 scalar_t__ ME4000_IRQ_STATUS_REG ;
 int ME4000_IRQ_STATUS_SC ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_err (int ,char*) ;
 unsigned int inl (scalar_t__) ;
 unsigned int me4000_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t me4000_ai_isr(int irq, void *dev_id)
{
 unsigned int tmp;
 struct comedi_device *dev = dev_id;
 struct comedi_subdevice *s = dev->read_subdev;
 int i;
 int c = 0;
 unsigned int lval;

 if (!dev->attached)
  return IRQ_NONE;

 if (inl(dev->iobase + ME4000_IRQ_STATUS_REG) &
     ME4000_IRQ_STATUS_AI_HF) {

  tmp = inl(dev->iobase + ME4000_AI_STATUS_REG);

  if (!(tmp & ME4000_AI_STATUS_FF_DATA) &&
      !(tmp & ME4000_AI_STATUS_HF_DATA) &&
      (tmp & ME4000_AI_STATUS_EF_DATA)) {
   dev_err(dev->class_dev, "FIFO overflow\n");
   s->async->events |= COMEDI_CB_ERROR;
   c = ME4000_AI_FIFO_COUNT;
  } else if ((tmp & ME4000_AI_STATUS_FF_DATA) &&
      !(tmp & ME4000_AI_STATUS_HF_DATA) &&
      (tmp & ME4000_AI_STATUS_EF_DATA)) {
   c = ME4000_AI_FIFO_COUNT / 2;
  } else {
   dev_err(dev->class_dev, "Undefined FIFO state\n");
   s->async->events |= COMEDI_CB_ERROR;
   c = 0;
  }

  for (i = 0; i < c; i++) {
   lval = me4000_ai_get_sample(dev, s);
   if (!comedi_buf_write_samples(s, &lval, 1))
    break;
  }


  tmp |= ME4000_AI_CTRL_HF_IRQ_RESET;
  outl(tmp, dev->iobase + ME4000_AI_CTRL_REG);
  tmp &= ~ME4000_AI_CTRL_HF_IRQ_RESET;
  outl(tmp, dev->iobase + ME4000_AI_CTRL_REG);
 }

 if (inl(dev->iobase + ME4000_IRQ_STATUS_REG) &
     ME4000_IRQ_STATUS_SC) {

  s->async->events |= COMEDI_CB_EOA;


  while (inl(dev->iobase + ME4000_AI_STATUS_REG) &
         ME4000_AI_STATUS_EF_DATA) {
   lval = me4000_ai_get_sample(dev, s);
   if (!comedi_buf_write_samples(s, &lval, 1))
    break;
  }


  tmp = inl(dev->iobase + ME4000_AI_CTRL_REG);
  tmp |= ME4000_AI_CTRL_SC_IRQ_RESET;
  outl(tmp, dev->iobase + ME4000_AI_CTRL_REG);
  tmp &= ~ME4000_AI_CTRL_SC_IRQ_RESET;
  outl(tmp, dev->iobase + ME4000_AI_CTRL_REG);
 }

 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
