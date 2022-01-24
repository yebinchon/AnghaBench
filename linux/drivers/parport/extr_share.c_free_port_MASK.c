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
struct parport {struct parport* name; TYPE_1__* probe_info; int /*<<< orphan*/  full_list; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct parport* description; struct parport* cmdset; struct parport* model; struct parport* mfr; struct parport* class_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  full_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct parport* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	int d;
	struct parport *port = FUNC4(dev);

	FUNC2(&full_list_lock);
	FUNC1(&port->full_list);
	FUNC3(&full_list_lock);
	for (d = 0; d < 5; d++) {
		FUNC0(port->probe_info[d].class_name);
		FUNC0(port->probe_info[d].mfr);
		FUNC0(port->probe_info[d].model);
		FUNC0(port->probe_info[d].cmdset);
		FUNC0(port->probe_info[d].description);
	}

	FUNC0(port->name);
	FUNC0(port);
}