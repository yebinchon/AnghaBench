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
struct TYPE_2__ {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW_LID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ s3_wmi ; 
 int FUNC2 (int*) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret, lid_sw;

	ret = FUNC2(&lid_sw);
	if (ret)
		return ret;

	FUNC0(s3_wmi.input, SW_LID, lid_sw);
	FUNC1(s3_wmi.input);

	return 0;
}