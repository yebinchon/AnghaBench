
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int is_6711; scalar_t__ is_6xxx; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI611X_AO_FIFO_DATA_REG ;
 int NI_E_AO_FIFO_DATA_REG ;
 int comedi_buf_read_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int ni_writel (struct comedi_device*,unsigned int,int ) ;
 int ni_writew (struct comedi_device*,unsigned short,int ) ;

__attribute__((used)) static void ni_ao_fifo_load(struct comedi_device *dev,
       struct comedi_subdevice *s, int n)
{
 struct ni_private *devpriv = dev->private;
 int i;
 unsigned short d;
 unsigned int packed_data;

 for (i = 0; i < n; i++) {
  comedi_buf_read_samples(s, &d, 1);

  if (devpriv->is_6xxx) {
   packed_data = d & 0xffff;

   if (!devpriv->is_6711) {
    comedi_buf_read_samples(s, &d, 1);
    i++;
    packed_data |= (d << 16) & 0xffff0000;
   }
   ni_writel(dev, packed_data, NI611X_AO_FIFO_DATA_REG);
  } else {
   ni_writew(dev, d, NI_E_AO_FIFO_DATA_REG);
  }
 }
}
