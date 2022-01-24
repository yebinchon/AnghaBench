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
struct tcs_request {int dummy; } ;
struct tcs_group {int offset; int /*<<< orphan*/  lock; struct tcs_request const** req; } ;
struct rsc_drv {int /*<<< orphan*/  lock; int /*<<< orphan*/  tcs_in_use; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcs_group*) ; 
 int FUNC1 (struct tcs_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsc_drv*,int,int /*<<< orphan*/ ,struct tcs_request const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsc_drv*,int) ; 
 int FUNC4 (struct rsc_drv*,struct tcs_group*,struct tcs_request const*) ; 
 int FUNC5 (struct tcs_group*) ; 
 struct tcs_group* FUNC6 (struct rsc_drv*,struct tcs_request const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct rsc_drv *drv, const struct tcs_request *msg)
{
	struct tcs_group *tcs;
	int tcs_id;
	unsigned long flags;
	int ret;

	tcs = FUNC6(drv, msg);
	if (FUNC0(tcs))
		return FUNC1(tcs);

	FUNC9(&tcs->lock, flags);
	FUNC8(&drv->lock);
	/*
	 * The h/w does not like if we send a request to the same address,
	 * when one is already in-flight or being processed.
	 */
	ret = FUNC4(drv, tcs, msg);
	if (ret) {
		FUNC10(&drv->lock);
		goto done_write;
	}

	tcs_id = FUNC5(tcs);
	if (tcs_id < 0) {
		ret = tcs_id;
		FUNC10(&drv->lock);
		goto done_write;
	}

	tcs->req[tcs_id - tcs->offset] = msg;
	FUNC7(tcs_id, drv->tcs_in_use);
	FUNC10(&drv->lock);

	FUNC2(drv, tcs_id, 0, msg);
	FUNC3(drv, tcs_id);

done_write:
	FUNC11(&tcs->lock, flags);
	return ret;
}