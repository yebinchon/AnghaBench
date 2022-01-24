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
struct nvmet_ctrl {int kato; int /*<<< orphan*/  ka_work; int /*<<< orphan*/  cntlid; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_keep_alive_timer ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct nvmet_ctrl *ctrl)
{
	FUNC1("ctrl %d start keep-alive timer for %d secs\n",
		ctrl->cntlid, ctrl->kato);

	FUNC0(&ctrl->ka_work, nvmet_keep_alive_timer);
	FUNC2(&ctrl->ka_work, ctrl->kato * HZ);
}