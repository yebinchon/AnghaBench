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
struct nvmet_ns {int /*<<< orphan*/  ref; } ;
struct nvmet_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct nvmet_ns* FUNC0 (struct nvmet_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct nvmet_ns *FUNC4(struct nvmet_ctrl *ctrl, __le32 nsid)
{
	struct nvmet_ns *ns;

	FUNC2();
	ns = FUNC0(ctrl, nsid);
	if (ns)
		FUNC1(&ns->ref);
	FUNC3();

	return ns;
}