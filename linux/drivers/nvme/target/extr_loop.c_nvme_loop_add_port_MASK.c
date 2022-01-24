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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_loop_ports ; 
 int /*<<< orphan*/  nvme_loop_ports_mutex ; 

__attribute__((used)) static int FUNC3(struct nvmet_port *port)
{
	FUNC1(&nvme_loop_ports_mutex);
	FUNC0(&port->entry, &nvme_loop_ports);
	FUNC2(&nvme_loop_ports_mutex);
	return 0;
}