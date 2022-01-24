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
struct ntb_queue_entry {size_t len; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_queue_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct ntb_queue_entry *entry, void *offset)
{
	void *buf = entry->buf;
	size_t len = entry->len;

	FUNC0(buf, offset, len);

	/* Ensure that the data is fully copied out before clearing the flag */
	FUNC2();

	FUNC1(entry, NULL);
}