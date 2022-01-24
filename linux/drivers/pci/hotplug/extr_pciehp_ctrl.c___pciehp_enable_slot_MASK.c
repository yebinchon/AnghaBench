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
typedef  scalar_t__ u8 ;
struct controller {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct controller*) ; 
 scalar_t__ FUNC1 (struct controller*) ; 
 int FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*) ; 

__attribute__((used)) static int FUNC7(struct controller *ctrl)
{
	u8 getstatus = 0;

	if (FUNC0(ctrl)) {
		FUNC4(ctrl, &getstatus);
		if (getstatus) {
			FUNC3(ctrl, "Slot(%s): Latch open\n",
				  FUNC6(ctrl));
			return -ENODEV;
		}
	}

	if (FUNC1(ctrl)) {
		FUNC5(ctrl, &getstatus);
		if (getstatus) {
			FUNC3(ctrl, "Slot(%s): Already enabled\n",
				  FUNC6(ctrl));
			return 0;
		}
	}

	return FUNC2(ctrl);
}