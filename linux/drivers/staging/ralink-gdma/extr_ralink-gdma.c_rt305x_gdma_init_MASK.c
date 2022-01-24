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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDMA_REG_GCT_ARBIT_RR ; 
 int GDMA_REG_GCT_CHAN_MASK ; 
 int GDMA_REG_GCT_CHAN_SHIFT ; 
 int GDMA_REG_GCT_VER_MASK ; 
 int GDMA_REG_GCT_VER_SHIFT ; 
 int /*<<< orphan*/  GDMA_RT305X_GCT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct gdma_dma_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gdma_dma_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gdma_dma_dev *dma_dev)
{
	u32 gct;

	/* all chans round robin */
	FUNC2(dma_dev, GDMA_RT305X_GCT, GDMA_REG_GCT_ARBIT_RR);

	gct = FUNC1(dma_dev, GDMA_RT305X_GCT);
	FUNC0(dma_dev->ddev.dev, "revision: %d, channels: %d\n",
		 (gct >> GDMA_REG_GCT_VER_SHIFT) & GDMA_REG_GCT_VER_MASK,
		 8 << ((gct >> GDMA_REG_GCT_CHAN_SHIFT) &
			GDMA_REG_GCT_CHAN_MASK));
}