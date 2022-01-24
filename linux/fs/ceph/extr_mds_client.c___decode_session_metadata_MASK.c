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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void **p, void *end,
				     bool *blacklisted)
{
	/* map<string,string> */
	u32 n;
	bool err_str;
	FUNC0(p, end, n, bad);
	while (n-- > 0) {
		u32 len;
		FUNC0(p, end, len, bad);
		FUNC1(p, end, len, bad);
		err_str = !FUNC2(*p, "error_string", len);
		*p += len;
		FUNC0(p, end, len, bad);
		FUNC1(p, end, len, bad);
		if (err_str && FUNC3(*p, "blacklisted", len))
			*blacklisted = true;
		*p += len;
	}
	return 0;
bad:
	return -1;
}