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
struct ci_hdrc {int /*<<< orphan*/  usb_phy; scalar_t__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ci_hdrc *ci)
{
	int ret;

	if (ci->phy) {
		ret = FUNC1(ci->phy);
		if (ret)
			return ret;

		ret = FUNC2(ci->phy);
		if (ret) {
			FUNC0(ci->phy);
			return ret;
		}
	} else {
		ret = FUNC3(ci->usb_phy);
	}

	return ret;
}