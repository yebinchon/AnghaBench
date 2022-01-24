#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {int /*<<< orphan*/  vc_screenbuf; int /*<<< orphan*/  vt_pid; } ;
struct TYPE_2__ {struct vc_data* d; } ;

/* Variables and functions */
 int /*<<< orphan*/  VT_DEALLOCATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vt_notifier_param*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vc_cons ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*) ; 
 int /*<<< orphan*/  vt_notifier_list ; 

struct vc_data *FUNC8(unsigned int currcons)
{
	struct vc_data *vc = NULL;

	FUNC0();

	if (FUNC4(currcons)) {
		struct vt_notifier_param param;

		param.vc = vc = vc_cons[currcons].d;
		FUNC1(&vt_notifier_list, VT_DEALLOCATE, &param);
		FUNC6(currcons);
		FUNC7(vc);
		FUNC3(vc->vt_pid);
		FUNC5(vc, NULL);
		FUNC2(vc->vc_screenbuf);
		vc_cons[currcons].d = NULL;
	}
	return vc;
}