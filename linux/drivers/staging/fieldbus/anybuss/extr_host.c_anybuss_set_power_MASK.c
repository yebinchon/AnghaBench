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
struct anybuss_host {int /*<<< orphan*/  wq; int /*<<< orphan*/  qlock; int /*<<< orphan*/  powerq; int /*<<< orphan*/  qcache; } ;
struct anybuss_client {struct anybuss_host* host; } ;
struct ab_task {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ab_task* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ab_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ab_task*) ; 
 int /*<<< orphan*/  task_fn_power_off ; 
 int /*<<< orphan*/  task_fn_power_on ; 

int FUNC3(struct anybuss_client *client, bool power_on)
{
	struct anybuss_host *cd = client->host;
	struct ab_task *t;
	int err;

	t = FUNC0(cd->qcache, power_on ?
				task_fn_power_on : task_fn_power_off);
	if (!t)
		return -ENOMEM;
	err = FUNC1(t, cd->powerq, &cd->qlock, &cd->wq);
	FUNC2(t);
	return err;
}