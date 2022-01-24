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
struct pps_client_pp {int /*<<< orphan*/  index; int /*<<< orphan*/  pps; } ;
struct parport {TYPE_1__* ops; struct pardevice* cad; } ;
struct pardevice {struct pps_client_pp* private; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_irq ) (struct parport*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pps_client_pp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct pardevice*) ; 
 int /*<<< orphan*/  pps_client_index ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*) ; 

__attribute__((used)) static void FUNC7(struct parport *port)
{
	struct pardevice *pardev = port->cad;
	struct pps_client_pp *device;

	/* FIXME: oooh, this is ugly! */
	if (!pardev || FUNC5(pardev->name, KBUILD_MODNAME))
		/* not our port */
		return;

	device = pardev->private;

	port->ops->disable_irq(port);
	FUNC4(device->pps);
	FUNC2(pardev);
	FUNC3(pardev);
	FUNC0(&pps_client_index, device->index);
	FUNC1(device);
}