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
struct tty_struct {struct r3964_message* disc_data; } ;
struct r3964_message {struct r3964_message* tx_buf; struct r3964_message* rx_buf; struct r3964_message* next; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tx_last; struct r3964_message* tx_first; int /*<<< orphan*/  pid; scalar_t__ msg_count; struct r3964_message* firstClient; int /*<<< orphan*/  tmr; } ;
struct r3964_info {struct r3964_info* tx_buf; struct r3964_info* rx_buf; struct r3964_info* next; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tx_last; struct r3964_info* tx_first; int /*<<< orphan*/  pid; scalar_t__ msg_count; struct r3964_info* firstClient; int /*<<< orphan*/  tmr; } ;
struct r3964_client_info {struct r3964_client_info* tx_buf; struct r3964_client_info* rx_buf; struct r3964_client_info* next; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tx_last; struct r3964_client_info* tx_first; int /*<<< orphan*/  pid; scalar_t__ msg_count; struct r3964_client_info* firstClient; int /*<<< orphan*/  tmr; } ;
struct r3964_block_header {struct r3964_block_header* tx_buf; struct r3964_block_header* rx_buf; struct r3964_block_header* next; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tx_last; struct r3964_block_header* tx_first; int /*<<< orphan*/  pid; scalar_t__ msg_count; struct r3964_block_header* firstClient; int /*<<< orphan*/  tmr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct r3964_message*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r3964_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct r3964_message* FUNC5 (struct r3964_message*,struct r3964_message*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct tty_struct *tty)
{
	struct r3964_info *pInfo = tty->disc_data;
	struct r3964_client_info *pClient, *pNext;
	struct r3964_message *pMsg;
	struct r3964_block_header *pHeader, *pNextHeader;
	unsigned long flags;

	FUNC0("close");

	/*
	 * Make sure that our task queue isn't activated.  If it
	 * is, take it out of the linked list.
	 */
	FUNC2(&pInfo->tmr);

	/* Remove client-structs and message queues: */
	pClient = pInfo->firstClient;
	while (pClient) {
		pNext = pClient->next;
		while (pClient->msg_count) {
			pMsg = FUNC5(pInfo, pClient);
			if (pMsg) {
				FUNC3(pMsg);
				FUNC1("r3964_close - msg kfree %p", pMsg);
			}
		}
		FUNC4(pClient->pid);
		FUNC3(pClient);
		FUNC1("r3964_close - client kfree %p", pClient);
		pClient = pNext;
	}
	/* Remove jobs from tx_queue: */
	FUNC6(&pInfo->lock, flags);
	pHeader = pInfo->tx_first;
	pInfo->tx_first = pInfo->tx_last = NULL;
	FUNC7(&pInfo->lock, flags);

	while (pHeader) {
		pNextHeader = pHeader->next;
		FUNC3(pHeader);
		pHeader = pNextHeader;
	}

	/* Free buffers: */
	FUNC3(pInfo->rx_buf);
	FUNC1("r3964_close - rx_buf kfree %p", pInfo->rx_buf);
	FUNC3(pInfo->tx_buf);
	FUNC1("r3964_close - tx_buf kfree %p", pInfo->tx_buf);
	FUNC3(pInfo);
	FUNC1("r3964_close - info kfree %p", pInfo);
}