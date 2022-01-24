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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  txstatus_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_STA_FIFO ; 
 int /*<<< orphan*/  TX_STA_FIFO_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev)
{
	u32 status;
	unsigned long flags;

	/*
	 * The TX_FIFO_STATUS interrupt needs special care. We should
	 * read TX_STA_FIFO but we should do it immediately as otherwise
	 * the register can overflow and we would lose status reports.
	 *
	 * Hence, read the TX_STA_FIFO register and copy all tx status
	 * reports into a kernel FIFO which is handled in the txstatus
	 * tasklet. We use a tasklet to process the tx status reports
	 * because we can schedule the tasklet multiple times (when the
	 * interrupt fires again during tx status processing).
	 *
	 * We also read statuses from tx status timeout timer, use
	 * lock to prevent concurent writes to fifo.
	 */

	FUNC4(&rt2x00dev->irqmask_lock, flags);

	while (!FUNC0(&rt2x00dev->txstatus_fifo)) {
		status = FUNC3(rt2x00dev, TX_STA_FIFO);
		if (!FUNC2(status, TX_STA_FIFO_VALID))
			break;

		FUNC1(&rt2x00dev->txstatus_fifo, status);
	}

	FUNC5(&rt2x00dev->irqmask_lock, flags);
}