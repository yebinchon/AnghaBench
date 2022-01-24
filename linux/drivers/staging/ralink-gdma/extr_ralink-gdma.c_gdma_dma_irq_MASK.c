#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct gdma_dma_dev {int /*<<< orphan*/  task; scalar_t__ chan_issued; int /*<<< orphan*/  cnt; int /*<<< orphan*/ * chan; TYPE_1__* data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int done_int_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gdma_dma_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gdma_dma_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gdma_dma_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct gdma_dma_dev *dma_dev = devid;
	u32 done, done_reg;
	unsigned int i;

	done_reg = dma_dev->data->done_int_reg;
	done = FUNC2(dma_dev, done_reg);
	if (FUNC5(!done))
		return IRQ_NONE;

	/* clean done bits */
	FUNC3(dma_dev, done_reg, done);

	i = 0;
	while (done) {
		if (done & 0x1) {
			FUNC1(dma_dev, &dma_dev->chan[i]);
			FUNC0(&dma_dev->cnt);
		}
		done >>= 1;
		i++;
	}

	/* start only have work to do */
	if (dma_dev->chan_issued)
		FUNC4(&dma_dev->task);

	return IRQ_HANDLED;
}