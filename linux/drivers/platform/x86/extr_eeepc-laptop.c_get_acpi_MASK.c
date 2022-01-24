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
struct eeepc_laptop {int cm_supported; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int ENODEV ; 
 char** cm_getv ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int*) ; 

__attribute__((used)) static int FUNC2(struct eeepc_laptop *eeepc, int cm)
{
	const char *method = cm_getv[cm];
	int value;

	if (method == NULL)
		return -ENODEV;
	if ((eeepc->cm_supported & (0x1 << cm)) == 0)
		return -ENODEV;

	if (FUNC1(eeepc->handle, method, &value))
		FUNC0("Error reading %s\n", method);
	return value;
}