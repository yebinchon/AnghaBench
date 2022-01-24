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
struct mite_channel {int done; int /*<<< orphan*/  channel; struct mite* mite; } ;
struct mite {int /*<<< orphan*/  lock; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOR_CLRDONE ; 
 unsigned int CHSR_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC6(struct mite_channel *mite_chan)
{
	struct mite *mite = mite_chan->mite;
	unsigned int status;
	unsigned long flags;

	FUNC3(&mite->lock, flags);
	status = FUNC2(mite->mmio + FUNC1(mite_chan->channel));
	if (status & CHSR_DONE) {
		mite_chan->done = 1;
		FUNC5(CHOR_CLRDONE,
		       mite->mmio + FUNC0(mite_chan->channel));
	}
	FUNC4(&mite->lock, flags);
	return status;
}