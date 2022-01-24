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
struct r3964_info {int /*<<< orphan*/ * tx_last; struct r3964_block_header* tx_first; int /*<<< orphan*/  lock; TYPE_1__* tty; } ;
struct r3964_block_header {struct r3964_block_header* next; int /*<<< orphan*/  length; scalar_t__ owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  R3964_MSG_ACK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct r3964_block_header*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct r3964_block_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r3964_block_header*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct r3964_info *pInfo, int error_code)
{
	struct r3964_block_header *pHeader;
	unsigned long flags;
#ifdef DEBUG_QUEUE
	struct r3964_block_header *pDump;
#endif

	pHeader = pInfo->tx_first;

	if (pHeader == NULL)
		return;

#ifdef DEBUG_QUEUE
	printk("r3964: remove_from_tx_queue: %p, length %u - ",
		pHeader, pHeader->length);
	for (pDump = pHeader; pDump; pDump = pDump->next)
		printk("%p ", pDump);
	printk("\n");
#endif

	if (pHeader->owner) {
		if (error_code) {
			FUNC2(pHeader->owner, R3964_MSG_ACK, 0,
				error_code, NULL);
		} else {
			FUNC2(pHeader->owner, R3964_MSG_ACK, pHeader->length,
				error_code, NULL);
		}
		FUNC7(&pInfo->tty->read_wait);
	}

	FUNC5(&pInfo->lock, flags);

	pInfo->tx_first = pHeader->next;
	if (pInfo->tx_first == NULL) {
		pInfo->tx_last = NULL;
	}

	FUNC6(&pInfo->lock, flags);

	FUNC3(pHeader);
	FUNC0("remove_from_tx_queue - kfree %p", pHeader);

	FUNC1("remove_from_tx_queue: tx_first = %p, tx_last = %p",
		pInfo->tx_first, pInfo->tx_last);
}