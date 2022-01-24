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
struct visorchannel {int /*<<< orphan*/  insert_lock; scalar_t__ needs_lock; } ;

/* Variables and functions */
 int FUNC0 (struct visorchannel*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct visorchannel *channel, u32 queue,
			      void *msg)
{
	int rc;
	unsigned long flags;

	if (channel->needs_lock) {
		FUNC1(&channel->insert_lock, flags);
		rc = FUNC0(channel, queue, msg);
		FUNC2(&channel->insert_lock, flags);
	} else {
		rc = FUNC0(channel, queue, msg);
	}

	return rc;
}