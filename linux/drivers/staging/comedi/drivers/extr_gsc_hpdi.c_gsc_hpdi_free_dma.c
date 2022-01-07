
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plx_dma_desc {int dummy; } ;
struct pci_dev {int dev; } ;
struct hpdi_private {int dma_desc_phys_addr; scalar_t__ dma_desc; int * dio_buffer_phys_addr; scalar_t__* dio_buffer; } ;
struct comedi_device {struct hpdi_private* private; } ;


 int DMA_BUFFER_SIZE ;
 int NUM_DMA_BUFFERS ;
 int NUM_DMA_DESCRIPTORS ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void gsc_hpdi_free_dma(struct comedi_device *dev)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct hpdi_private *devpriv = dev->private;
 int i;

 if (!devpriv)
  return;


 for (i = 0; i < NUM_DMA_BUFFERS; i++) {
  if (devpriv->dio_buffer[i])
   dma_free_coherent(&pcidev->dev,
       DMA_BUFFER_SIZE,
       devpriv->dio_buffer[i],
       devpriv->dio_buffer_phys_addr[i]);
 }

 if (devpriv->dma_desc)
  dma_free_coherent(&pcidev->dev,
      sizeof(struct plx_dma_desc) *
      NUM_DMA_DESCRIPTORS,
      devpriv->dma_desc,
      devpriv->dma_desc_phys_addr);
}
