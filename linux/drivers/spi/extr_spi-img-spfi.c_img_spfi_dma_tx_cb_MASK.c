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
struct img_spfi {int tx_dma_busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  master; int /*<<< orphan*/  rx_dma_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct img_spfi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct img_spfi *spfi = data;
	unsigned long flags;

	FUNC0(spfi);

	FUNC2(&spfi->lock, flags);
	spfi->tx_dma_busy = false;
	if (!spfi->rx_dma_busy)
		FUNC1(spfi->master);
	FUNC3(&spfi->lock, flags);
}