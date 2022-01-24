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
struct TYPE_2__ {int /*<<< orphan*/  trsvcid; } ;
struct nvmet_port {TYPE_1__ disc_addr; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EACCES ; 
 size_t EINVAL ; 
 size_t NVMF_TRSVCID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 
 struct nvmet_port* FUNC2 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC3(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_port *port = FUNC2(item);

	if (count > NVMF_TRSVCID_SIZE) {
		FUNC0("Invalid value '%s' for trsvcid\n", page);
		return -EINVAL;
	}
	if (port->enabled) {
		FUNC0("Cannot modify address while enabled\n");
		FUNC0("Disable the address before modifying\n");
		return -EACCES;
	}

	if (FUNC1(page, "%s\n", port->disc_addr.trsvcid) != 1)
		return -EINVAL;
	return count;
}