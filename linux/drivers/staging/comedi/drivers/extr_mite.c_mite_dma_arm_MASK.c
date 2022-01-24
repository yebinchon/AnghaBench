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
struct mite_channel {int /*<<< orphan*/  channel; scalar_t__ done; struct mite* mite; } ;
struct mite {int /*<<< orphan*/  lock; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOR_START ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct mite_channel *mite_chan)
{
	struct mite *mite = mite_chan->mite;
	unsigned long flags;

	/*
	 * memory barrier is intended to insure any twiddling with the buffer
	 * is done before writing to the mite to arm dma transfer
	 */
	FUNC1();
	FUNC2(&mite->lock, flags);
	mite_chan->done = 0;
	/* arm */
	FUNC4(CHOR_START, mite->mmio + FUNC0(mite_chan->channel));
	FUNC3(&mite->lock, flags);
}