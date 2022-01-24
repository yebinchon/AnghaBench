#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ trtype; int /*<<< orphan*/  tsas; } ;
struct nvmet_port {TYPE_1__ disc_addr; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 scalar_t__ NVMF_TRTYPE_RDMA ; 
 int /*<<< orphan*/  NVMF_TSAS_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_port*) ; 
 TYPE_2__* nvmet_transport_names ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 struct nvmet_port* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_port *port = FUNC5(item);
	int i;

	if (port->enabled) {
		FUNC3("Cannot modify address while enabled\n");
		FUNC3("Disable the address before modifying\n");
		return -EACCES;
	}

	for (i = 0; i < FUNC0(nvmet_transport_names); i++) {
		if (FUNC4(page, nvmet_transport_names[i].name))
			goto found;
	}

	FUNC3("Invalid value '%s' for trtype\n", page);
	return -EINVAL;
found:
	FUNC1(&port->disc_addr.tsas, 0, NVMF_TSAS_SIZE);
	port->disc_addr.trtype = nvmet_transport_names[i].type;
	if (port->disc_addr.trtype == NVMF_TRTYPE_RDMA)
		FUNC2(port);
	return count;
}