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
struct pcidas64_private {int /*<<< orphan*/  ao_dma_desc_bus_addr; scalar_t__ ao_dma_desc; int /*<<< orphan*/  ai_dma_desc_bus_addr; scalar_t__ ai_dma_desc; int /*<<< orphan*/ * ao_buffer_bus_addr; scalar_t__* ao_buffer; int /*<<< orphan*/ * ai_buffer_bus_addr; scalar_t__* ai_buffer; } ;
struct pcidas64_board {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct comedi_device {struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;

/* Variables and functions */
 int AO_DMA_RING_COUNT ; 
 int DMA_BUFFER_SIZE ; 
 int FUNC0 (struct pcidas64_board const*) ; 
 struct pci_dev* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	const struct pcidas64_board *board = dev->board_ptr;
	struct pci_dev *pcidev = FUNC1(dev);
	struct pcidas64_private *devpriv = dev->private;
	int i;

	if (!devpriv)
		return;

	/* free pci dma buffers */
	for (i = 0; i < FUNC0(board); i++) {
		if (devpriv->ai_buffer[i])
			FUNC2(&pcidev->dev,
					  DMA_BUFFER_SIZE,
					  devpriv->ai_buffer[i],
					  devpriv->ai_buffer_bus_addr[i]);
	}
	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
		if (devpriv->ao_buffer[i])
			FUNC2(&pcidev->dev,
					  DMA_BUFFER_SIZE,
					  devpriv->ao_buffer[i],
					  devpriv->ao_buffer_bus_addr[i]);
	}
	/* free dma descriptors */
	if (devpriv->ai_dma_desc)
		FUNC2(&pcidev->dev,
				  sizeof(struct plx_dma_desc) *
				  FUNC0(board),
				  devpriv->ai_dma_desc,
				  devpriv->ai_dma_desc_bus_addr);
	if (devpriv->ao_dma_desc)
		FUNC2(&pcidev->dev,
				  sizeof(struct plx_dma_desc) *
				  AO_DMA_RING_COUNT,
				  devpriv->ao_dma_desc,
				  devpriv->ao_dma_desc_bus_addr);
}