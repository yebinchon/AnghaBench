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
struct queue_entry {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_IO_FAILED ; 
 int /*<<< orphan*/  TXDONE_FAILURE ; 
 int /*<<< orphan*/  TXDONE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct queue_entry *entry)
{
	/*
	 * If the transfer to hardware succeeded, it does not mean the
	 * frame was send out correctly. It only means the frame
	 * was successfully pushed to the hardware, we have no
	 * way to determine the transmission status right now.
	 * (Only indirectly by looking at the failed TX counters
	 * in the register).
	 */
	if (FUNC1(ENTRY_DATA_IO_FAILED, &entry->flags))
		FUNC0(entry, TXDONE_FAILURE);
	else
		FUNC0(entry, TXDONE_UNKNOWN);
}