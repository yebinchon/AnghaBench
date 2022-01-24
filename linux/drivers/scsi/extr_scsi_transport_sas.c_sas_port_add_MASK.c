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
struct sas_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct sas_port *port)
{
	int error;

	/* No phys should be added until this is made visible */
	FUNC0(!FUNC2(&port->phy_list));

	error = FUNC1(&port->dev);

	if (error)
		return error;

	FUNC3(&port->dev);
	FUNC4(&port->dev);

	return 0;
}