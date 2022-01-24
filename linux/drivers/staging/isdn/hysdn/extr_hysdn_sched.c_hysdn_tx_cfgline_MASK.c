#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int debug_flags; int async_busy; unsigned short async_channel; int /*<<< orphan*/  hysdn_lock; int /*<<< orphan*/  irq_queue; scalar_t__ async_len; int /*<<< orphan*/  async_data; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 int ERR_ASYNC_TIME ; 
 int LOG_SCHED_ASYN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC6 (unsigned char*) ; 

int
FUNC7(hysdn_card *card, unsigned char *line, unsigned short chan)
{
	int cnt = 50;		/* timeout intervalls */
	unsigned long flags;

	if (card->debug_flags & LOG_SCHED_ASYN)
		FUNC0(card, "async tx-cfg chan=%d len=%d", chan, FUNC6(line) + 1);

	while (card->async_busy) {

		if (card->debug_flags & LOG_SCHED_ASYN)
			FUNC0(card, "async tx-cfg delayed");

		FUNC1(20);		/* Timeout 20ms */
		if (!--cnt)
			return (-ERR_ASYNC_TIME);	/* timed out */
	}			/* wait for buffer to become free */

	FUNC3(&card->hysdn_lock, flags);
	FUNC5(card->async_data, line);
	card->async_len = FUNC6(line) + 1;
	card->async_channel = chan;
	card->async_busy = 1;	/* request transfer */

	/* now queue the task */
	FUNC2(&card->irq_queue);
	FUNC4(&card->hysdn_lock, flags);

	if (card->debug_flags & LOG_SCHED_ASYN)
		FUNC0(card, "async tx-cfg data queued");

	cnt++;			/* short delay */

	while (card->async_busy) {

		if (card->debug_flags & LOG_SCHED_ASYN)
			FUNC0(card, "async tx-cfg waiting for tx-ready");

		FUNC1(20);		/* Timeout 20ms */
		if (!--cnt)
			return (-ERR_ASYNC_TIME);	/* timed out */
	}			/* wait for buffer to become free again */

	if (card->debug_flags & LOG_SCHED_ASYN)
		FUNC0(card, "async tx-cfg data send");

	return (0);		/* line send correctly */
}