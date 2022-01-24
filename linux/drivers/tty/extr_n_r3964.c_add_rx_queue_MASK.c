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
struct r3964_info {int /*<<< orphan*/  blocks_in_rx_queue; struct r3964_block_header* rx_first; int /*<<< orphan*/  lock; struct r3964_block_header* rx_last; } ;
struct r3964_block_header {int /*<<< orphan*/  length; struct r3964_block_header* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct r3964_block_header*,int /*<<< orphan*/ ,struct r3964_block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct r3964_info *pInfo,
			 struct r3964_block_header *pHeader)
{
	unsigned long flags;

	FUNC1(&pInfo->lock, flags);

	pHeader->next = NULL;

	if (pInfo->rx_last == NULL) {
		pInfo->rx_first = pInfo->rx_last = pHeader;
	} else {
		pInfo->rx_last->next = pHeader;
		pInfo->rx_last = pHeader;
	}
	pInfo->blocks_in_rx_queue++;

	FUNC2(&pInfo->lock, flags);

	FUNC0("add_rx_queue: %p, length = %d, rx_first = %p, count = %d",
		pHeader, pHeader->length,
		pInfo->rx_first, pInfo->blocks_in_rx_queue);
}