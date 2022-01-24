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
typedef  int /*<<< orphan*/  dbf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * on_close_chsc_area ; 
 int /*<<< orphan*/  on_close_mutex ; 
 int /*<<< orphan*/ * on_close_request ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	char dbf[13];
	int ret;

	FUNC3(&on_close_mutex);
	if (!on_close_chsc_area) {
		ret = -ENOENT;
		goto out_unlock;
	}
	FUNC1((unsigned long)on_close_chsc_area);
	on_close_chsc_area = NULL;
	FUNC2(on_close_request);
	on_close_request = NULL;
	ret = 0;
out_unlock:
	FUNC4(&on_close_mutex);
	FUNC5(dbf, sizeof(dbf), "ocrret:%d", ret);
	FUNC0(0, dbf);
	return ret;
}