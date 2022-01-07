
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int is_611x; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_private* private; } ;


 int NI611X_AI_FIFO_DATA_REG ;
 int NI_E_STATUS_REG ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int ni_readb (struct comedi_device*,int ) ;
 unsigned int ni_readl (struct comedi_device*,int ) ;

__attribute__((used)) static void get_last_sample_611x(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned short data;
 unsigned int dl;

 if (!devpriv->is_611x)
  return;


 if (ni_readb(dev, NI_E_STATUS_REG) & 0x80) {
  dl = ni_readl(dev, NI611X_AI_FIFO_DATA_REG);
  data = dl & 0xffff;
  comedi_buf_write_samples(s, &data, 1);
 }
}
