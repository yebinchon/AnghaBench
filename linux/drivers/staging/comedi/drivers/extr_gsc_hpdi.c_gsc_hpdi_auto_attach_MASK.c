#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct plx_dma_desc {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct hpdi_private {int* dio_buffer_phys_addr; int dma_desc_phys_addr; void* dma_desc; void** dio_buffer; void* plx9080_mmio; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int len_chanlist; int maxdata; int /*<<< orphan*/  cancel; int /*<<< orphan*/  do_cmdtest; int /*<<< orphan*/  do_cmd; int /*<<< orphan*/  insn_config; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {char* board_name; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  irq; void* mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DIO ; 
 int DMA_BUFFER_SIZE ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int NUM_DMA_BUFFERS ; 
 int NUM_DMA_DESCRIPTORS ; 
 int SDF_CMD_READ ; 
 int SDF_LSAMPL ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 struct hpdi_private* FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gsc_hpdi_cancel ; 
 int /*<<< orphan*/  gsc_hpdi_cmd ; 
 int /*<<< orphan*/  gsc_hpdi_cmd_test ; 
 int /*<<< orphan*/  gsc_hpdi_dio_insn_config ; 
 int FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 
 int /*<<< orphan*/  gsc_hpdi_interrupt ; 
 int FUNC9 (struct comedi_device*,int) ; 
 void* FUNC10 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  range_digital ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct comedi_device*) ; 

__attribute__((used)) static int FUNC13(struct comedi_device *dev,
				unsigned long context_unused)
{
	struct pci_dev *pcidev = FUNC3(dev);
	struct hpdi_private *devpriv;
	struct comedi_subdevice *s;
	int i;
	int retval;

	dev->board_name = "pci-hpdi32";

	devpriv = FUNC0(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	retval = FUNC2(dev);
	if (retval)
		return retval;
	FUNC11(pcidev);

	devpriv->plx9080_mmio = FUNC10(pcidev, 0);
	dev->mmio = FUNC10(pcidev, 2);
	if (!devpriv->plx9080_mmio || !dev->mmio) {
		FUNC5(dev->class_dev, "failed to remap io memory\n");
		return -ENOMEM;
	}

	FUNC8(dev);

	/* get irq */
	if (FUNC12(pcidev->irq, gsc_hpdi_interrupt, IRQF_SHARED,
			dev->board_name, dev)) {
		FUNC5(dev->class_dev,
			 "unable to allocate irq %u\n", pcidev->irq);
		return -EINVAL;
	}
	dev->irq = pcidev->irq;

	FUNC4(dev->class_dev, " irq %u\n", dev->irq);

	/* allocate pci dma buffers */
	for (i = 0; i < NUM_DMA_BUFFERS; i++) {
		devpriv->dio_buffer[i] =
		    FUNC6(&pcidev->dev, DMA_BUFFER_SIZE,
				       &devpriv->dio_buffer_phys_addr[i],
				       GFP_KERNEL);
	}
	/* allocate dma descriptors */
	devpriv->dma_desc = FUNC6(&pcidev->dev,
					       sizeof(struct plx_dma_desc) *
					       NUM_DMA_DESCRIPTORS,
					       &devpriv->dma_desc_phys_addr,
					       GFP_KERNEL);
	if (devpriv->dma_desc_phys_addr & 0xf) {
		FUNC5(dev->class_dev,
			 " dma descriptors not quad-word aligned (bug)\n");
		return -EIO;
	}

	retval = FUNC9(dev, 0x1000);
	if (retval < 0)
		return retval;

	retval = FUNC1(dev, 1);
	if (retval)
		return retval;

	/* Digital I/O subdevice */
	s = &dev->subdevices[0];
	dev->read_subdev = s;
	s->type		= COMEDI_SUBD_DIO;
	s->subdev_flags	= SDF_READABLE | SDF_WRITABLE | SDF_LSAMPL |
			  SDF_CMD_READ;
	s->n_chan	= 32;
	s->len_chanlist	= 32;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_config	= gsc_hpdi_dio_insn_config;
	s->do_cmd	= gsc_hpdi_cmd;
	s->do_cmdtest	= gsc_hpdi_cmd_test;
	s->cancel	= gsc_hpdi_cancel;

	return FUNC7(dev);
}