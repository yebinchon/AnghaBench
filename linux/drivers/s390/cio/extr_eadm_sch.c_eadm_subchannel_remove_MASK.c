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
struct subchannel {int /*<<< orphan*/ * lock; } ;
struct eadm_private {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subchannel*) ; 
 struct eadm_private* FUNC1 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC2 (struct eadm_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC4 (struct subchannel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct subchannel *sch)
{
	struct eadm_private *private = FUNC1(sch);

	FUNC5(&list_lock);
	FUNC3(&private->head);
	FUNC6(&list_lock);

	FUNC0(sch);

	FUNC5(sch->lock);
	FUNC4(sch, NULL);
	FUNC6(sch->lock);

	FUNC2(private);

	return 0;
}