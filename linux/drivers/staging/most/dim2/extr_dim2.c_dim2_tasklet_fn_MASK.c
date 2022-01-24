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
struct dim2_hdm {TYPE_1__* hch; } ;
struct TYPE_2__ {int /*<<< orphan*/  ch; int /*<<< orphan*/  is_initialized; } ;

/* Variables and functions */
 int DMA_CHANNELS ; 
 int /*<<< orphan*/  dim_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dim2_hdm*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct dim2_hdm *dev = (struct dim2_hdm *)data;
	unsigned long flags;
	int ch_idx;

	for (ch_idx = 0; ch_idx < DMA_CHANNELS; ch_idx++) {
		if (!dev->hch[ch_idx].is_initialized)
			continue;

		FUNC2(&dim_lock, flags);
		FUNC0(&dev->hch[ch_idx].ch);
		FUNC3(&dim_lock, flags);

		FUNC1(dev, ch_idx);
		while (!FUNC4(dev->hch + ch_idx))
			continue;
	}
}