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
struct nvmet_port {int dummy; } ;
struct config_item {TYPE_1__* ci_parent; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {struct config_item* ci_parent; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nvmet_port*,struct nvmet_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_port*,struct nvmet_port*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int*) ; 
 struct nvmet_port* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_port *parent = FUNC4(item->ci_parent->ci_parent);
	struct nvmet_port *port = FUNC4(item);
	bool enable;

	if (FUNC3(page, &enable))
		goto inval;

	if (enable)
		FUNC1(parent, port);
	else
		FUNC0(parent, port);

	return count;
inval:
	FUNC2("Invalid value '%s' for enable\n", page);
	return -EINVAL;
}