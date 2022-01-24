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
struct mite_channel {int /*<<< orphan*/  channel; struct mite* mite; } ;
struct mite {scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOR_ABORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct mite_channel *mite_chan)
{
	struct mite *mite = mite_chan->mite;

	/* disarm */
	FUNC1(CHOR_ABORT, mite->mmio + FUNC0(mite_chan->channel));
}