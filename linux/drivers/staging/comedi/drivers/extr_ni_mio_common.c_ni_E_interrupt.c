
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_m_series; int mite_channel_lock; scalar_t__ ao_mite_chan; scalar_t__ ai_mite_chan; scalar_t__ mite; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; int attached; struct ni_private* private; struct comedi_subdevice* write_subdev; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned short NISTC_AI_STATUS1_INTA ;
 int NISTC_AI_STATUS1_REG ;
 unsigned short NISTC_AO_STATUS1_INTB ;
 int NISTC_AO_STATUS1_REG ;
 int ack_a_interrupt (struct comedi_device*,unsigned short) ;
 int ack_b_interrupt (struct comedi_device*,unsigned short) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int handle_a_interrupt (struct comedi_device*,struct comedi_subdevice*,unsigned short) ;
 int handle_b_interrupt (struct comedi_device*,struct comedi_subdevice*,unsigned short) ;
 int handle_cdio_interrupt (struct comedi_device*) ;
 int handle_gpct_interrupt (struct comedi_device*,int) ;
 int mite_ack_linkc (scalar_t__,struct comedi_subdevice*,int) ;
 unsigned short ni_stc_readw (struct comedi_device*,int ) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ni_E_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s_ai = dev->read_subdev;
 struct comedi_subdevice *s_ao = dev->write_subdev;
 unsigned short a_status;
 unsigned short b_status;
 unsigned long flags;




 if (!dev->attached)
  return IRQ_NONE;
 smp_mb();


 spin_lock_irqsave(&dev->spinlock, flags);
 a_status = ni_stc_readw(dev, NISTC_AI_STATUS1_REG);
 b_status = ni_stc_readw(dev, NISTC_AO_STATUS1_REG);
 ack_a_interrupt(dev, a_status);
 ack_b_interrupt(dev, b_status);
 if (s_ai) {
  if (a_status & NISTC_AI_STATUS1_INTA)
   handle_a_interrupt(dev, s_ai, a_status);

  comedi_handle_events(dev, s_ai);
 }
 if (s_ao) {
  if (b_status & NISTC_AO_STATUS1_INTB)
   handle_b_interrupt(dev, s_ao, b_status);

  comedi_handle_events(dev, s_ao);
 }
 handle_gpct_interrupt(dev, 0);
 handle_gpct_interrupt(dev, 1);





 spin_unlock_irqrestore(&dev->spinlock, flags);
 return IRQ_HANDLED;
}
