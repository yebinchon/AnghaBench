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
struct device_node {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct device_node const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static bool FUNC2(const struct device_node *device)
{
	const char *status;
	int statlen;

	if (!device)
		return false;

	status = FUNC0(device, "status", &statlen);
	if (status == NULL)
		return true;

	if (statlen > 0) {
		if (!FUNC1(status, "okay") || !FUNC1(status, "ok"))
			return true;
	}

	return false;
}