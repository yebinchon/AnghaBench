#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;
struct nvmet_port {TYPE_1__ disc_addr; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EACCES ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct nvmet_port* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_port *port = FUNC3(item);
	u16 portid = 0;

	if (FUNC1(page, 0, &portid)) {
		FUNC2("Invalid value '%s' for portid\n", page);
		return -EINVAL;
	}

	if (port->enabled) {
		FUNC2("Cannot modify address while enabled\n");
		FUNC2("Disable the address before modifying\n");
		return -EACCES;
	}
	port->disc_addr.portid = FUNC0(portid);
	return count;
}