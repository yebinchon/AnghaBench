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
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OP_USBCMD ; 
 int /*<<< orphan*/  USBCMD_RST ; 
 scalar_t__ FUNC0 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ci_hdrc *ci)
{
	int count = 0;

	FUNC1(ci, OP_USBCMD, USBCMD_RST, USBCMD_RST);
	while (FUNC0(ci, OP_USBCMD, USBCMD_RST)) {
		FUNC2(10);
		if (count++ > 1000)
			return -ETIMEDOUT;
	}

	return 0;
}