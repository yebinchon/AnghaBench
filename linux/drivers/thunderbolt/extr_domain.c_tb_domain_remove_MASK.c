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
struct tb {int /*<<< orphan*/  dev; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctl; TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct tb*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct tb *tb)
{
	FUNC2(&tb->lock);
	if (tb->cm_ops->stop)
		tb->cm_ops->stop(tb);
	/* Stop the domain control traffic */
	FUNC5(tb->ctl);
	FUNC3(&tb->lock);

	FUNC1(tb->wq);
	FUNC0(&tb->dev);
}