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
struct rproc {scalar_t__ priv; } ;
struct q6v5 {int running; int /*<<< orphan*/  dev; int /*<<< orphan*/  q6v5; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct q6v5*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rproc *rproc)
{
	struct q6v5 *qproc = (struct q6v5 *)rproc->priv;
	int ret;

	qproc->running = false;

	ret = FUNC2(&qproc->q6v5);
	if (ret == -ETIMEDOUT)
		FUNC0(qproc->dev, "timed out on wait\n");

	FUNC1(qproc);

	return 0;
}