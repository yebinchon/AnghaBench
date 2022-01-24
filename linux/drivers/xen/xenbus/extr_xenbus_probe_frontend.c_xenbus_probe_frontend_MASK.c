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
struct xen_bus_type {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int FUNC4 (struct xen_bus_type*,char const*,char*) ; 

__attribute__((used)) static int FUNC5(struct xen_bus_type *bus, const char *type,
				 const char *name)
{
	char *nodename;
	int err;

	/* ignore console/0 */
	if (!FUNC3(type, "console", 7) && !FUNC3(name, "0", 1)) {
		FUNC0("Ignoring buggy device entry console/0");
		return 0;
	}

	nodename = FUNC1(GFP_KERNEL, "%s/%s/%s", bus->root, type, name);
	if (!nodename)
		return -ENOMEM;

	FUNC0("%s", nodename);

	err = FUNC4(bus, type, nodename);
	FUNC2(nodename);
	return err;
}