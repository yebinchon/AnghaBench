
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int is_6143; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_private* private; } ;


 int NI6143_AI_FIFO_CTRL_REG ;
 int NI6143_AI_FIFO_DATA_REG ;
 int NI6143_AI_FIFO_STATUS_REG ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int ni_readl (struct comedi_device*,int ) ;
 int ni_writel (struct comedi_device*,int,int ) ;

__attribute__((used)) static void get_last_sample_6143(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned short data;
 unsigned int dl;

 if (!devpriv->is_6143)
  return;


 if (ni_readl(dev, NI6143_AI_FIFO_STATUS_REG) & 0x01) {

  ni_writel(dev, 0x01, NI6143_AI_FIFO_CTRL_REG);
  dl = ni_readl(dev, NI6143_AI_FIFO_DATA_REG);


  data = (dl >> 16) & 0xffff;
  comedi_buf_write_samples(s, &data, 1);
 }
}
