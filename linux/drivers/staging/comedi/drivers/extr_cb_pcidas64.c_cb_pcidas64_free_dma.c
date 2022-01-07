
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plx_dma_desc {int dummy; } ;
struct pcidas64_private {int ao_dma_desc_bus_addr; scalar_t__ ao_dma_desc; int ai_dma_desc_bus_addr; scalar_t__ ai_dma_desc; int * ao_buffer_bus_addr; scalar_t__* ao_buffer; int * ai_buffer_bus_addr; scalar_t__* ai_buffer; } ;
struct pcidas64_board {int dummy; } ;
struct pci_dev {int dev; } ;
struct comedi_device {struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;


 int AO_DMA_RING_COUNT ;
 int DMA_BUFFER_SIZE ;
 int ai_dma_ring_count (struct pcidas64_board const*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void cb_pcidas64_free_dma(struct comedi_device *dev)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct pcidas64_private *devpriv = dev->private;
 int i;

 if (!devpriv)
  return;


 for (i = 0; i < ai_dma_ring_count(board); i++) {
  if (devpriv->ai_buffer[i])
   dma_free_coherent(&pcidev->dev,
       DMA_BUFFER_SIZE,
       devpriv->ai_buffer[i],
       devpriv->ai_buffer_bus_addr[i]);
 }
 for (i = 0; i < AO_DMA_RING_COUNT; i++) {
  if (devpriv->ao_buffer[i])
   dma_free_coherent(&pcidev->dev,
       DMA_BUFFER_SIZE,
       devpriv->ao_buffer[i],
       devpriv->ao_buffer_bus_addr[i]);
 }

 if (devpriv->ai_dma_desc)
  dma_free_coherent(&pcidev->dev,
      sizeof(struct plx_dma_desc) *
      ai_dma_ring_count(board),
      devpriv->ai_dma_desc,
      devpriv->ai_dma_desc_bus_addr);
 if (devpriv->ao_dma_desc)
  dma_free_coherent(&pcidev->dev,
      sizeof(struct plx_dma_desc) *
      AO_DMA_RING_COUNT,
      devpriv->ao_dma_desc,
      devpriv->ao_dma_desc_bus_addr);
}
