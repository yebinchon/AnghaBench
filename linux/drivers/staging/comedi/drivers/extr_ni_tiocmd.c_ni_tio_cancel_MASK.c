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
struct ni_gpct {unsigned int counter_index; int /*<<< orphan*/  lock; scalar_t__ mite_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ni_gpct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ni_gpct*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct ni_gpct *counter)
{
	unsigned int cidx = counter->counter_index;
	unsigned long flags;

	FUNC3(counter, false, 0);
	FUNC6(&counter->lock, flags);
	if (counter->mite_chan)
		FUNC2(counter->mite_chan);
	FUNC7(&counter->lock, flags);
	FUNC4(counter, false, false);

	FUNC5(counter, FUNC1(cidx),
			FUNC0(cidx), 0x0);
	return 0;
}