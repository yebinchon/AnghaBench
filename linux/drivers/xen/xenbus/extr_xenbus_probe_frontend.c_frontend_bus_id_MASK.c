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
 int EINVAL ; 
 scalar_t__ XEN_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(char bus_id[XEN_BUS_ID_SIZE], const char *nodename)
{
	nodename = FUNC1(nodename, '/');
	if (!nodename || FUNC3(nodename + 1) >= XEN_BUS_ID_SIZE) {
		FUNC0("bad frontend %s\n", nodename);
		return -EINVAL;
	}

	FUNC2(bus_id, nodename + 1, XEN_BUS_ID_SIZE);
	if (!FUNC1(bus_id, '/')) {
		FUNC0("bus_id %s no slash\n", bus_id);
		return -EINVAL;
	}
	*FUNC1(bus_id, '/') = '-';
	return 0;
}