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
struct nvme_ns {scalar_t__ disk; } ;
struct nvme_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_ctrl*,unsigned int) ; 
 struct nvme_ns* FUNC1 (struct nvme_ctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ns*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nvme_ctrl *ctrl, unsigned nsid)
{
	struct nvme_ns *ns;

	ns = FUNC1(ctrl, nsid);
	if (ns) {
		if (ns->disk && FUNC4(ns->disk))
			FUNC2(ns);
		FUNC3(ns);
	} else
		FUNC0(ctrl, nsid);
}