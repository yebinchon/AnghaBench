
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned short* ai_fifo_buffer; scalar_t__ is_6143; scalar_t__ is_611x; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;
struct comedi_async {int events; } ;


 int ARRAY_SIZE (unsigned short*) ;
 int COMEDI_CB_ERROR ;
 int NI611X_AI_FIFO_DATA_REG ;
 int NI6143_AI_FIFO_CTRL_REG ;
 int NI6143_AI_FIFO_DATA_REG ;
 int NI_E_AI_FIFO_DATA_REG ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int dev_err (int ,char*) ;
 unsigned int ni_readl (struct comedi_device*,int ) ;
 unsigned short ni_readw (struct comedi_device*,int ) ;
 int ni_writel (struct comedi_device*,int,int ) ;

__attribute__((used)) static void ni_ai_fifo_read(struct comedi_device *dev,
       struct comedi_subdevice *s, int n)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 unsigned int dl;
 unsigned short data;
 int i;

 if (devpriv->is_611x) {
  for (i = 0; i < n / 2; i++) {
   dl = ni_readl(dev, NI611X_AI_FIFO_DATA_REG);

   data = (dl >> 16) & 0xffff;
   comedi_buf_write_samples(s, &data, 1);
   data = dl & 0xffff;
   comedi_buf_write_samples(s, &data, 1);
  }

  if (n % 2) {
   dl = ni_readl(dev, NI611X_AI_FIFO_DATA_REG);
   data = dl & 0xffff;
   comedi_buf_write_samples(s, &data, 1);
  }
 } else if (devpriv->is_6143) {




  for (i = 0; i < n / 2; i++) {
   dl = ni_readl(dev, NI6143_AI_FIFO_DATA_REG);

   data = (dl >> 16) & 0xffff;
   comedi_buf_write_samples(s, &data, 1);
   data = dl & 0xffff;
   comedi_buf_write_samples(s, &data, 1);
  }
  if (n % 2) {


   ni_writel(dev, 0x01, NI6143_AI_FIFO_CTRL_REG);
   dl = ni_readl(dev, NI6143_AI_FIFO_DATA_REG);
   data = (dl >> 16) & 0xffff;
   comedi_buf_write_samples(s, &data, 1);
  }
 } else {
  if (n > ARRAY_SIZE(devpriv->ai_fifo_buffer)) {
   dev_err(dev->class_dev,
    "bug! ai_fifo_buffer too small\n");
   async->events |= COMEDI_CB_ERROR;
   return;
  }
  for (i = 0; i < n; i++) {
   devpriv->ai_fifo_buffer[i] =
       ni_readw(dev, NI_E_AI_FIFO_DATA_REG);
  }
  comedi_buf_write_samples(s, devpriv->ai_fifo_buffer, n);
 }
}
