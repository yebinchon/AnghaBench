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
struct nvmet_ns {size_t anagrpid; struct nvmet_ns* device_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_ns*) ; 
 int /*<<< orphan*/ * nvmet_ana_group_enabled ; 
 int /*<<< orphan*/  nvmet_ana_sem ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_ns*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nvmet_ns *ns)
{
	FUNC2(ns);

	FUNC0(&nvmet_ana_sem);
	nvmet_ana_group_enabled[ns->anagrpid]--;
	FUNC3(&nvmet_ana_sem);

	FUNC1(ns->device_path);
	FUNC1(ns);
}