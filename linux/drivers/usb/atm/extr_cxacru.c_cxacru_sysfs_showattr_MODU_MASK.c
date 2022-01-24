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
typedef  int u32 ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static ssize_t FUNC3(u32 value, char *buf)
{
	static char *str[] = {
			"",
			"ANSI T1.413",
			"ITU-T G.992.1 (G.DMT)",
			"ITU-T G.992.2 (G.LITE)"
	};
	if (FUNC2(value >= FUNC0(str)))
		return FUNC1(buf, PAGE_SIZE, "%u\n", value);
	return FUNC1(buf, PAGE_SIZE, "%s\n", str[value]);
}