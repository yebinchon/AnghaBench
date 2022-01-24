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
struct rproc {int /*<<< orphan*/  crash_handler; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
typedef  enum rproc_crash_type { ____Placeholder_rproc_crash_type } rproc_crash_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rproc *rproc, enum rproc_crash_type type)
{
	if (!rproc) {
		FUNC1("NULL rproc pointer\n");
		return;
	}

	FUNC0(&rproc->dev, "crash detected in %s: type %s\n",
		rproc->name, FUNC2(type));

	/* create a new task to handle the error */
	FUNC3(&rproc->crash_handler);
}