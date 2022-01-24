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
struct tcs_group {int /*<<< orphan*/  lock; } ;
struct rsc_drv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcs_group*) ; 
 int FUNC1 (struct tcs_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsc_drv*,int,int,struct tcs_request const*) ; 
 int FUNC3 (struct tcs_group*,struct tcs_request const*,int*,int*) ; 
 struct tcs_group* FUNC4 (struct rsc_drv*,struct tcs_request const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct rsc_drv *drv, const struct tcs_request *msg)
{
	struct tcs_group *tcs;
	int tcs_id = 0, cmd_id = 0;
	unsigned long flags;
	int ret;

	tcs = FUNC4(drv, msg);
	if (FUNC0(tcs))
		return FUNC1(tcs);

	FUNC5(&tcs->lock, flags);
	/* find the TCS id and the command in the TCS to write to */
	ret = FUNC3(tcs, msg, &tcs_id, &cmd_id);
	if (!ret)
		FUNC2(drv, tcs_id, cmd_id, msg);
	FUNC6(&tcs->lock, flags);

	return ret;
}