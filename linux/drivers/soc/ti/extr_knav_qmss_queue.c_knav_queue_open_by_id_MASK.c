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
struct knav_queue_inst {int dummy; } ;
struct knav_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENODEV ; 
 struct knav_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int KNAV_QUEUE_SHARED ; 
 struct knav_queue* FUNC1 (struct knav_queue_inst*,char const*,unsigned int) ; 
 int /*<<< orphan*/  knav_dev_lock ; 
 struct knav_queue_inst* FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct knav_queue_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct knav_queue_inst*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct knav_queue *
FUNC7(const char *name, unsigned id, unsigned flags)
{
	struct knav_queue_inst *inst;
	struct knav_queue *qh;

	FUNC5(&knav_dev_lock);

	qh = FUNC0(-ENODEV);
	inst = FUNC2(id);
	if (!inst)
		goto unlock_ret;

	qh = FUNC0(-EEXIST);
	if (!(flags & KNAV_QUEUE_SHARED) && FUNC3(inst))
		goto unlock_ret;

	qh = FUNC0(-EBUSY);
	if ((flags & KNAV_QUEUE_SHARED) &&
	    (FUNC3(inst) && !FUNC4(inst)))
		goto unlock_ret;

	qh = FUNC1(inst, name, flags);

unlock_ret:
	FUNC6(&knav_dev_lock);

	return qh;
}