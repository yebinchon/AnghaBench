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

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char** FUNC3 (int /*<<< orphan*/ ,char*,char*,int*) ; 

__attribute__((used)) static void FUNC4(void)
{
	char **devclass, **dev;
	int devclass_n, dev_n;
	int i, j;

	devclass = FUNC3(XBT_NIL, "device", "", &devclass_n);
	if (FUNC0(devclass))
		return;

	for (i = 0; i < devclass_n; i++) {
		dev = FUNC3(XBT_NIL, "device", devclass[i], &dev_n);
		if (FUNC0(dev))
			continue;
		for (j = 0; j < dev_n; j++)
			FUNC2(devclass[i], dev[j]);
		FUNC1(dev);
	}
	FUNC1(devclass);
}