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
struct das16_private_struct {int /*<<< orphan*/  dma; int /*<<< orphan*/  timer; } ;
struct comedi_device {struct das16_private_struct* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_ISADMA_READ ; 
 int /*<<< orphan*/  DAS16_DMA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  das16_timer_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, unsigned int dma_chan)
{
	struct das16_private_struct *devpriv = dev->private;

	FUNC1(&devpriv->timer, das16_timer_interrupt, 0);

	/* only DMA channels 3 and 1 are valid */
	if (!(dma_chan == 1 || dma_chan == 3))
		return;

	/* DMA uses two buffers */
	devpriv->dma = FUNC0(dev, 2, dma_chan, dma_chan,
					   DAS16_DMA_SIZE, COMEDI_ISADMA_READ);
}