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
struct visorchannel {int /*<<< orphan*/  remove_lock; int /*<<< orphan*/  needs_lock; } ;

/* Variables and functions */
 int FUNC0 (struct visorchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC3(struct visorchannel *channel, u32 queue)
{
	bool rc;
	unsigned long flags;

	if (!channel->needs_lock)
		return FUNC0(channel, queue);
	FUNC1(&channel->remove_lock, flags);
	rc = FUNC0(channel, queue);
	FUNC2(&channel->remove_lock, flags);
	return rc;
}