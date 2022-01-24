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
struct mite_channel {int /*<<< orphan*/ * ring; int /*<<< orphan*/  channel; struct mite* mite; } ;
struct mite {int /*<<< orphan*/  lock; scalar_t__ mmio; } ;

/* Variables and functions */
 int CHCR_CLR_CONT_RB_IE ; 
 int CHCR_CLR_DMA_IE ; 
 int CHCR_CLR_DONE_IE ; 
 int CHCR_CLR_DRDY_IE ; 
 int CHCR_CLR_LC_IE ; 
 int CHCR_CLR_LINKP_IE ; 
 int CHCR_CLR_MRDY_IE ; 
 int CHCR_CLR_SAR_IE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

void FUNC6(struct mite_channel *mite_chan)
{
	struct mite *mite = mite_chan->mite;
	unsigned long flags;

	/* spin lock to prevent races with mite_request_channel */
	FUNC3(&mite->lock, flags);
	if (mite_chan->ring) {
		FUNC1(mite_chan);
		FUNC2(mite_chan);
		/*
		 * disable all channel's interrupts (do it after disarm/reset so
		 * MITE_CHCR reg isn't changed while dma is still active!)
		 */
		FUNC5(CHCR_CLR_DMA_IE | CHCR_CLR_LINKP_IE |
		       CHCR_CLR_SAR_IE | CHCR_CLR_DONE_IE |
		       CHCR_CLR_MRDY_IE | CHCR_CLR_DRDY_IE |
		       CHCR_CLR_LC_IE | CHCR_CLR_CONT_RB_IE,
		       mite->mmio + FUNC0(mite_chan->channel));
		mite_chan->ring = NULL;
	}
	FUNC4(&mite->lock, flags);
}