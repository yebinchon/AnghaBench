
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plx_dma_desc {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct hpdi_private {int* dio_buffer_phys_addr; int dma_desc_phys_addr; void* dma_desc; void** dio_buffer; void* plx9080_mmio; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int len_chanlist; int maxdata; int cancel; int do_cmdtest; int do_cmd; int insn_config; int * range_table; int type; } ;
struct comedi_device {char* board_name; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int class_dev; int irq; void* mmio; } ;


 int COMEDI_SUBD_DIO ;
 int DMA_BUFFER_SIZE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int NUM_DMA_BUFFERS ;
 int NUM_DMA_DESCRIPTORS ;
 int SDF_CMD_READ ;
 int SDF_LSAMPL ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 struct hpdi_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_warn (int ,char*,...) ;
 void* dma_alloc_coherent (int *,int,int*,int ) ;
 int gsc_hpdi_cancel ;
 int gsc_hpdi_cmd ;
 int gsc_hpdi_cmd_test ;
 int gsc_hpdi_dio_insn_config ;
 int gsc_hpdi_init (struct comedi_device*) ;
 int gsc_hpdi_init_plx9080 (struct comedi_device*) ;
 int gsc_hpdi_interrupt ;
 int gsc_hpdi_setup_dma_descriptors (struct comedi_device*,int) ;
 void* pci_ioremap_bar (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;
 int range_digital ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct comedi_device*) ;

__attribute__((used)) static int gsc_hpdi_auto_attach(struct comedi_device *dev,
    unsigned long context_unused)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct hpdi_private *devpriv;
 struct comedi_subdevice *s;
 int i;
 int retval;

 dev->board_name = "pci-hpdi32";

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 retval = comedi_pci_enable(dev);
 if (retval)
  return retval;
 pci_set_master(pcidev);

 devpriv->plx9080_mmio = pci_ioremap_bar(pcidev, 0);
 dev->mmio = pci_ioremap_bar(pcidev, 2);
 if (!devpriv->plx9080_mmio || !dev->mmio) {
  dev_warn(dev->class_dev, "failed to remap io memory\n");
  return -ENOMEM;
 }

 gsc_hpdi_init_plx9080(dev);


 if (request_irq(pcidev->irq, gsc_hpdi_interrupt, IRQF_SHARED,
   dev->board_name, dev)) {
  dev_warn(dev->class_dev,
    "unable to allocate irq %u\n", pcidev->irq);
  return -EINVAL;
 }
 dev->irq = pcidev->irq;

 dev_dbg(dev->class_dev, " irq %u\n", dev->irq);


 for (i = 0; i < NUM_DMA_BUFFERS; i++) {
  devpriv->dio_buffer[i] =
      dma_alloc_coherent(&pcidev->dev, DMA_BUFFER_SIZE,
           &devpriv->dio_buffer_phys_addr[i],
           GFP_KERNEL);
 }

 devpriv->dma_desc = dma_alloc_coherent(&pcidev->dev,
            sizeof(struct plx_dma_desc) *
            NUM_DMA_DESCRIPTORS,
            &devpriv->dma_desc_phys_addr,
            GFP_KERNEL);
 if (devpriv->dma_desc_phys_addr & 0xf) {
  dev_warn(dev->class_dev,
    " dma descriptors not quad-word aligned (bug)\n");
  return -EIO;
 }

 retval = gsc_hpdi_setup_dma_descriptors(dev, 0x1000);
 if (retval < 0)
  return retval;

 retval = comedi_alloc_subdevices(dev, 1);
 if (retval)
  return retval;


 s = &dev->subdevices[0];
 dev->read_subdev = s;
 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE | SDF_LSAMPL |
     SDF_CMD_READ;
 s->n_chan = 32;
 s->len_chanlist = 32;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_config = gsc_hpdi_dio_insn_config;
 s->do_cmd = gsc_hpdi_cmd;
 s->do_cmdtest = gsc_hpdi_cmd_test;
 s->cancel = gsc_hpdi_cancel;

 return gsc_hpdi_init(dev);
}
