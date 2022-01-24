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
struct cdns3 {int role; int /*<<< orphan*/  dev; scalar_t__ role_override; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int FUNC0 (struct cdns3*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3*) ; 
 int FUNC2 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct cdns3 *cdns)
{
	enum usb_role real_role, current_role;
	int ret = 0;

	/* Do nothing if role based on syfs. */
	if (cdns->role_override)
		return 0;

	FUNC5(cdns->dev);

	current_role = cdns->role;
	real_role = FUNC2(cdns);

	/* Do nothing if nothing changed */
	if (current_role == real_role)
		goto exit;

	FUNC1(cdns);

	FUNC3(cdns->dev, "Switching role %d -> %d", current_role, real_role);

	ret = FUNC0(cdns, real_role);
	if (ret) {
		/* Back to current role */
		FUNC4(cdns->dev, "set %d has failed, back to %d\n",
			real_role, current_role);
		ret = FUNC0(cdns, current_role);
		if (ret)
			FUNC4(cdns->dev, "back to %d failed too\n",
				current_role);
	}
exit:
	FUNC6(cdns->dev);
	return ret;
}