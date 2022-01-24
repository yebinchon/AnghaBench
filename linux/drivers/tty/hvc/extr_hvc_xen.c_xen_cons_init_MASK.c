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
struct hv_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVC_COOKIE ; 
 struct hv_ops dom0_hvc_ops ; 
 struct hv_ops domU_hvc_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hv_ops const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6(void)
{
	const struct hv_ops *ops;

	if (!FUNC1())
		return 0;

	if (FUNC4())
		ops = &dom0_hvc_ops;
	else {
		int r;
		ops = &domU_hvc_ops;

		if (FUNC3())
			r = FUNC2();
		else
			r = FUNC5();
		if (r < 0)
			return r;
	}

	FUNC0(HVC_COOKIE, 0, ops);
	return 0;
}