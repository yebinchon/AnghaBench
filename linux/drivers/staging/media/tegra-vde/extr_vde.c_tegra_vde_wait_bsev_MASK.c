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
struct TYPE_2__ {struct device* parent; } ;
struct tegra_vde {scalar_t__ bsev; TYPE_1__ miscdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BSE_DMA_BUSY ; 
 int BSE_ICMDQUE_EMPTY ; 
 scalar_t__ INTR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct tegra_vde *vde, bool wait_dma)
{
	struct device *dev = vde->miscdev.parent;
	u32 value;
	int err;

	err = FUNC2(vde->bsev + INTR_STATUS, value,
					 !(value & FUNC0(2)), 1, 100);
	if (err) {
		FUNC1(dev, "BSEV unknown bit timeout\n");
		return err;
	}

	err = FUNC2(vde->bsev + INTR_STATUS, value,
					 (value & BSE_ICMDQUE_EMPTY), 1, 100);
	if (err) {
		FUNC1(dev, "BSEV ICMDQUE flush timeout\n");
		return err;
	}

	if (!wait_dma)
		return 0;

	err = FUNC2(vde->bsev + INTR_STATUS, value,
					 !(value & BSE_DMA_BUSY), 1, 100);
	if (err) {
		FUNC1(dev, "BSEV DMA timeout\n");
		return err;
	}

	return 0;
}