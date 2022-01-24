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
struct xenbus_watch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int*) ; 
 char* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct xenbus_watch *watch,
				      const char *path, const char *token)
{
	unsigned int cpu;
	char *cpustr;

	cpustr = FUNC1(path, "cpu/");
	if (cpustr != NULL) {
		FUNC0(cpustr, "cpu/%u", &cpu);
		FUNC2(cpu);
	}
}