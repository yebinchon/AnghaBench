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
typedef  int u8 ;
struct TYPE_2__ {int treq; } ;
struct nvmet_port {TYPE_1__ disc_addr; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EACCES ; 
 size_t EINVAL ; 
 int NVME_TREQ_SECURE_CHANNEL_MASK ; 
 int NVMF_TREQ_NOT_REQUIRED ; 
 int NVMF_TREQ_NOT_SPECIFIED ; 
 int NVMF_TREQ_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 struct nvmet_port* FUNC2 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC3(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_port *port = FUNC2(item);
	u8 treq = port->disc_addr.treq & ~NVME_TREQ_SECURE_CHANNEL_MASK;

	if (port->enabled) {
		FUNC0("Cannot modify address while enabled\n");
		FUNC0("Disable the address before modifying\n");
		return -EACCES;
	}

	if (FUNC1(page, "not specified")) {
		treq |= NVMF_TREQ_NOT_SPECIFIED;
	} else if (FUNC1(page, "required")) {
		treq |= NVMF_TREQ_REQUIRED;
	} else if (FUNC1(page, "not required")) {
		treq |= NVMF_TREQ_NOT_REQUIRED;
	} else {
		FUNC0("Invalid value '%s' for treq\n", page);
		return -EINVAL;
	}
	port->disc_addr.treq = treq;

	return count;
}