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
struct nvmet_port {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_delete_wq ; 
 int /*<<< orphan*/  nvme_loop_ports_mutex ; 

__attribute__((used)) static void FUNC4(struct nvmet_port *port)
{
	FUNC2(&nvme_loop_ports_mutex);
	FUNC1(&port->entry);
	FUNC3(&nvme_loop_ports_mutex);

	/*
	 * Ensure any ctrls that are in the process of being
	 * deleted are in fact deleted before we return
	 * and free the port. This is to prevent active
	 * ctrls from using a port after it's freed.
	 */
	FUNC0(nvme_delete_wq);
}