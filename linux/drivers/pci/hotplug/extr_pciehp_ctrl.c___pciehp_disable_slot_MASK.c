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
 int EINVAL ; 
 scalar_t__ FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*) ; 

__attribute__((used)) static int FUNC5(struct controller *ctrl, bool safe_removal)
{
	u8 getstatus = 0;

	if (FUNC0(ctrl)) {
		FUNC2(ctrl, &getstatus);
		if (!getstatus) {
			FUNC1(ctrl, "Slot(%s): Already disabled\n",
				  FUNC4(ctrl));
			return -EINVAL;
		}
	}

	FUNC3(ctrl, safe_removal);
	return 0;
}