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
typedef  int u8 ;
typedef  int u16 ;
struct esas2r_adapter {int /*<<< orphan*/  flash_rev; scalar_t__ flash_ver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

bool FUNC7(struct esas2r_adapter *a)
{
	u16 year = FUNC3(a->flash_ver);
	u8 day = FUNC2(FUNC1(a->flash_ver));
	u8 month = FUNC0(FUNC1(a->flash_ver));

	if (day == 0
	    || month == 0
	    || day > 31
	    || month > 12
	    || year < 2006
	    || year > 9999) {
		FUNC6(a->flash_rev, "not found");
		a->flash_ver = 0;
		return false;
	}

	FUNC5(a->flash_rev, "%02d/%02d/%04d", month, day, year);
	FUNC4("flash version: %s", a->flash_rev);
	return true;
}