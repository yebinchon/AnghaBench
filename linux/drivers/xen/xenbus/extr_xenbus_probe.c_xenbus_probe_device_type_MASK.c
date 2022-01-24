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
struct xen_bus_type {int (* probe ) (struct xen_bus_type*,char const*,char*) ;int /*<<< orphan*/  root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 int FUNC1 (char**) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int FUNC3 (struct xen_bus_type*,char const*,char*) ; 
 char** FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct xen_bus_type *bus, const char *type)
{
	int err = 0;
	char **dir;
	unsigned int dir_n = 0;
	int i;

	dir = FUNC4(XBT_NIL, bus->root, type, &dir_n);
	if (FUNC0(dir))
		return FUNC1(dir);

	for (i = 0; i < dir_n; i++) {
		err = bus->probe(bus, type, dir[i]);
		if (err)
			break;
	}

	FUNC2(dir);
	return err;
}