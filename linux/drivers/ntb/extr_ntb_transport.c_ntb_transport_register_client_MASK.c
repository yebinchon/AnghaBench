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
struct TYPE_2__ {int /*<<< orphan*/ * bus; } ;
struct ntb_transport_client {TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ntb_transport_bus ; 
 int /*<<< orphan*/  ntb_transport_list ; 

int FUNC2(struct ntb_transport_client *drv)
{
	drv->driver.bus = &ntb_transport_bus;

	if (FUNC1(&ntb_transport_list))
		return -ENODEV;

	return FUNC0(&drv->driver);
}