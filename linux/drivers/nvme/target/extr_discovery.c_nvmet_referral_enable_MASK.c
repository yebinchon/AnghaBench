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
struct nvmet_port {int enabled; int /*<<< orphan*/  referrals; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_config_sem ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nvmet_port *parent, struct nvmet_port *port)
{
	FUNC0(&nvmet_config_sem);
	if (FUNC2(&port->entry)) {
		FUNC1(&port->entry, &parent->referrals);
		port->enabled = true;
		FUNC3(parent, NULL);
	}
	FUNC4(&nvmet_config_sem);
}