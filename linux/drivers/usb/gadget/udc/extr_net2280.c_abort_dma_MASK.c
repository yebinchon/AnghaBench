#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net2280_ep {TYPE_1__* dma; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  dmastat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_ABORT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net2280_ep*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net2280_ep *ep)
{
	/* abort the current transfer */
	if (FUNC1(!FUNC2(&ep->queue))) {
		/* FIXME work around errata 0121, 0122, 0124 */
		FUNC6(FUNC0(DMA_ABORT), &ep->dma->dmastat);
		FUNC4(ep->dma);
	} else
		FUNC5(ep->dma);
	FUNC3(ep);
}