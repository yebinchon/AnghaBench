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
struct TYPE_2__ {struct config_item* ci_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_port*,struct nvmet_port*) ; 
 struct nvmet_port* FUNC2 (struct config_item*) ; 

__attribute__((used)) static void FUNC3(struct config_item *item)
{
	struct nvmet_port *parent = FUNC2(item->ci_parent->ci_parent);
	struct nvmet_port *port = FUNC2(item);

	FUNC1(parent, port);
	FUNC0(port);
}