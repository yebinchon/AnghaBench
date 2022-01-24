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
struct nvmet_port {struct nvmet_port* ana_state; int /*<<< orphan*/  global_entry; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nvmet_port* FUNC2 (struct config_item*) ; 

__attribute__((used)) static void FUNC3(struct config_item *item)
{
	struct nvmet_port *port = FUNC2(item);

	FUNC1(&port->global_entry);

	FUNC0(port->ana_state);
	FUNC0(port);
}