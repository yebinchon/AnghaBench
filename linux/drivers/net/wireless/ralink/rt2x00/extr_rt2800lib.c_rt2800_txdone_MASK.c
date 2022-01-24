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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  txstatus_fifo; } ;
struct queue_entry {int /*<<< orphan*/  entry_idx; int /*<<< orphan*/  flags; } ;
struct data_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_STATUS_PENDING ; 
 int /*<<< orphan*/  ENTRY_OWNER_DEVICE_DATA ; 
 int /*<<< orphan*/  Q_INDEX_DONE ; 
 int /*<<< orphan*/  TX_STA_FIFO_PID_QUEUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct queue_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct data_queue*) ; 
 struct queue_entry* FUNC8 (struct data_queue*,int /*<<< orphan*/ ) ; 
 struct data_queue* FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct rt2x00_dev *rt2x00dev, unsigned int quota)
{
	struct data_queue *queue;
	struct queue_entry *entry;
	u32 reg;
	u8 qid;
	bool match;

	while (quota-- > 0 && FUNC0(&rt2x00dev->txstatus_fifo, &reg)) {
		/*
		 * TX_STA_FIFO_PID_QUEUE is a 2-bit field, thus qid is
		 * guaranteed to be one of the TX QIDs .
		 */
		qid = FUNC5(reg, TX_STA_FIFO_PID_QUEUE);
		queue = FUNC9(rt2x00dev, qid);

		if (FUNC11(FUNC7(queue))) {
			FUNC4(rt2x00dev, "Got TX status for an empty queue %u, dropping\n",
				   qid);
			break;
		}

		entry = FUNC8(queue, Q_INDEX_DONE);

		if (FUNC11(FUNC10(ENTRY_OWNER_DEVICE_DATA, &entry->flags) ||
			     !FUNC10(ENTRY_DATA_STATUS_PENDING, &entry->flags))) {
			FUNC6(rt2x00dev, "Data pending for entry %u in queue %u\n",
				    entry->entry_idx, qid);
			break;
		}

		match = FUNC3(entry, reg);
		FUNC2(entry, reg, FUNC1(entry), match);
	}
}