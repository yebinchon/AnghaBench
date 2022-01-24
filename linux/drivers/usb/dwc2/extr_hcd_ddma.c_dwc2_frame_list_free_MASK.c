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
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/ * frame_list; int /*<<< orphan*/  frame_list_sz; int /*<<< orphan*/  frame_list_dma; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct dwc2_hsotg *hsotg)
{
	unsigned long flags;

	FUNC2(&hsotg->lock, flags);

	if (!hsotg->frame_list) {
		FUNC3(&hsotg->lock, flags);
		return;
	}

	FUNC0(hsotg->dev, hsotg->frame_list_dma,
			 hsotg->frame_list_sz, DMA_FROM_DEVICE);

	FUNC1(hsotg->frame_list);
	hsotg->frame_list = NULL;

	FUNC3(&hsotg->lock, flags);
}