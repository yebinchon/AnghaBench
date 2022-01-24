#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct queue_entry {int /*<<< orphan*/  entry_idx; TYPE_1__* queue; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  qid; int /*<<< orphan*/  rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_IO_FAILED ; 
 int /*<<< orphan*/  TXWI_W1_ACK ; 
 int /*<<< orphan*/  TXWI_W1_PACKETID ; 
 int /*<<< orphan*/  TXWI_W1_WIRELESS_CLI_ID ; 
 int /*<<< orphan*/  TX_STA_FIFO_PID_TYPE ; 
 int /*<<< orphan*/  TX_STA_FIFO_TX_ACK_REQUIRED ; 
 int /*<<< orphan*/  TX_STA_FIFO_TX_AGGRE ; 
 int /*<<< orphan*/  TX_STA_FIFO_WCID ; 
 int /*<<< orphan*/ * FUNC0 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct queue_entry *entry, u32 reg)
{
	__le32 *txwi;
	u32 word;
	int wcid, ack, pid;
	int tx_wcid, tx_ack, tx_pid, is_agg;

	/*
	 * This frames has returned with an IO error,
	 * so the status report is not intended for this
	 * frame.
	 */
	if (FUNC4(ENTRY_DATA_IO_FAILED, &entry->flags))
		return false;

	wcid	= FUNC3(reg, TX_STA_FIFO_WCID);
	ack	= FUNC3(reg, TX_STA_FIFO_TX_ACK_REQUIRED);
	pid	= FUNC3(reg, TX_STA_FIFO_PID_TYPE);
	is_agg	= FUNC3(reg, TX_STA_FIFO_TX_AGGRE);

	/*
	 * Validate if this TX status report is intended for
	 * this entry by comparing the WCID/ACK/PID fields.
	 */
	txwi = FUNC0(entry);

	word = FUNC2(txwi, 1);
	tx_wcid = FUNC3(word, TXWI_W1_WIRELESS_CLI_ID);
	tx_ack  = FUNC3(word, TXWI_W1_ACK);
	tx_pid  = FUNC3(word, TXWI_W1_PACKETID);

	if (wcid != tx_wcid || ack != tx_ack || (!is_agg && pid != tx_pid)) {
		FUNC1(entry->queue->rt2x00dev,
			   "TX status report missed for queue %d entry %d\n",
			   entry->queue->qid, entry->entry_idx);
		return false;
	}

	return true;
}