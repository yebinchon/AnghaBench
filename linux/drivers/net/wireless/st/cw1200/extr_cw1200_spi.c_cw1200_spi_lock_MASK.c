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
struct hwbus_priv {int claimed; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC8(struct hwbus_priv *self)
{
	unsigned long flags;

	FUNC0(wait, current);

	FUNC2();

	FUNC1(&self->wq, &wait);
	FUNC6(&self->lock, flags);
	while (1) {
		FUNC5(TASK_UNINTERRUPTIBLE);
		if (!self->claimed)
			break;
		FUNC7(&self->lock, flags);
		FUNC4();
		FUNC6(&self->lock, flags);
	}
	FUNC5(TASK_RUNNING);
	self->claimed = 1;
	FUNC7(&self->lock, flags);
	FUNC3(&self->wq, &wait);

	return;
}