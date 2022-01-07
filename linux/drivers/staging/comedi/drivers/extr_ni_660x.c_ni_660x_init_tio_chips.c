
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int * dma_cfg; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 int NI660X_DMA_CFG ;
 int NI660X_DMA_CFG_SEL_NONE (unsigned int) ;
 int NI660X_IO_CFG (unsigned int) ;
 unsigned int NI660X_MAX_DMA_CHANNEL ;
 unsigned int NI660X_NUM_PFI_CHANNELS ;
 int NI660X_STC_DIO_CONTROL ;
 int ni_660x_write (struct comedi_device*,unsigned int,int ,int ) ;

__attribute__((used)) static void ni_660x_init_tio_chips(struct comedi_device *dev,
       unsigned int n_chips)
{
 struct ni_660x_private *devpriv = dev->private;
 unsigned int chip;
 unsigned int chan;





 ni_660x_write(dev, 0, 0, NI660X_STC_DIO_CONTROL);

 for (chip = 0; chip < n_chips; ++chip) {

  devpriv->dma_cfg[chip] = 0;
  for (chan = 0; chan < NI660X_MAX_DMA_CHANNEL; ++chan)
   devpriv->dma_cfg[chip] |= NI660X_DMA_CFG_SEL_NONE(chan);
  ni_660x_write(dev, chip, devpriv->dma_cfg[chip],
         NI660X_DMA_CFG);


  for (chan = 0; chan < NI660X_NUM_PFI_CHANNELS; ++chan)
   ni_660x_write(dev, chip, 0, NI660X_IO_CFG(chan));
 }
}
