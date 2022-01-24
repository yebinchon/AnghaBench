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
struct usblp {int /*<<< orphan*/  lock; scalar_t__ wcomplete; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct usblp *usblp, int nonblock)
{
	unsigned long flags;

	if (!usblp->present)
		return -ENODEV;
	if (FUNC0(current))
		return -EINTR;
	FUNC1(&usblp->lock, flags);
	if (usblp->wcomplete) {
		FUNC2(&usblp->lock, flags);
		return 0;
	}
	FUNC2(&usblp->lock, flags);
	if (nonblock)
		return -EAGAIN;
	return 1;
}