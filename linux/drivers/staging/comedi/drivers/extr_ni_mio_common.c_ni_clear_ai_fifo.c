
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_625x; scalar_t__ is_6143; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;


 int NI6143_AI_FIFO_CTRL_REG ;
 int NI6143_AI_FIFO_STATUS_REG ;
 int NISTC_ADC_FIFO_CLR_REG ;
 int NISTC_AI_CMD1_CONVERT_PULSE ;
 int NISTC_AI_CMD1_REG ;
 int NI_M_STATIC_AI_CTRL_REG (int ) ;
 int dev_err (int ,char*) ;
 int ni_readl (struct comedi_device*,int ) ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;
 int ni_writeb (struct comedi_device*,int,int ) ;
 int ni_writel (struct comedi_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ni_clear_ai_fifo(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 static const int timeout = 10000;
 int i;

 if (devpriv->is_6143) {

  ni_writel(dev, 0x10, NI6143_AI_FIFO_CTRL_REG);
  ni_writel(dev, 0x00, NI6143_AI_FIFO_CTRL_REG);

  for (i = 0; i < timeout; i++) {
   if (!(ni_readl(dev, NI6143_AI_FIFO_STATUS_REG) & 0x10))
    break;
   udelay(1);
  }
  if (i == timeout)
   dev_err(dev->class_dev, "FIFO flush timeout\n");
 } else {
  ni_stc_writew(dev, 1, NISTC_ADC_FIFO_CLR_REG);
  if (devpriv->is_625x) {
   ni_writeb(dev, 0, NI_M_STATIC_AI_CTRL_REG(0));
   ni_writeb(dev, 1, NI_M_STATIC_AI_CTRL_REG(0));
  }
 }
}
