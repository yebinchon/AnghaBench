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
struct pps_source_info {char* path; int mode; int /*<<< orphan*/ * dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct pps_client_pp {int index; int /*<<< orphan*/  pardev; int /*<<< orphan*/  cw; int /*<<< orphan*/  pps; } ;
struct parport {int /*<<< orphan*/  name; TYPE_1__* ops; } ;
struct pardev_cb {int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_func; struct pps_client_pp* private; } ;
typedef  int /*<<< orphan*/  pps_client_cb ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_irq ) (struct parport*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  PARPORT_FLAG_EXCL ; 
 int PPS_CANWAIT ; 
 int PPS_CAPTUREBOTH ; 
 int PPS_ECHOASSERT ; 
 int PPS_ECHOCLEAR ; 
 int PPS_OFFSETASSERT ; 
 int PPS_OFFSETCLEAR ; 
 int PPS_TSFMT_TSPEC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  clear_wait ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pps_client_pp*) ; 
 struct pps_client_pp* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pardev_cb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parport_irq ; 
 int /*<<< orphan*/  FUNC7 (struct parport*,int /*<<< orphan*/ ,struct pardev_cb*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pps_client_index ; 
 int /*<<< orphan*/  FUNC10 (struct pps_source_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct parport*) ; 

__attribute__((used)) static void FUNC14(struct parport *port)
{
	struct pardev_cb pps_client_cb;
	int index;
	struct pps_client_pp *device;
	struct pps_source_info info = {
		.name		= KBUILD_MODNAME,
		.path		= "",
		.mode		= PPS_CAPTUREBOTH | \
				  PPS_OFFSETASSERT | PPS_OFFSETCLEAR | \
				  PPS_ECHOASSERT | PPS_ECHOCLEAR | \
				  PPS_CANWAIT | PPS_TSFMT_TSPEC,
		.owner		= THIS_MODULE,
		.dev		= NULL
	};

	device = FUNC4(sizeof(struct pps_client_pp), GFP_KERNEL);
	if (!device) {
		FUNC11("memory allocation failed, not attaching\n");
		return;
	}

	index = FUNC1(&pps_client_index, 0, 0, GFP_KERNEL);
	FUNC5(&pps_client_cb, 0, sizeof(pps_client_cb));
	pps_client_cb.private = device;
	pps_client_cb.irq_func = parport_irq;
	pps_client_cb.flags = PARPORT_FLAG_EXCL;
	device->pardev = FUNC7(port,
						    KBUILD_MODNAME,
						    &pps_client_cb,
						    index);
	if (!device->pardev) {
		FUNC11("couldn't register with %s\n", port->name);
		goto err_free;
	}

	if (FUNC6(device->pardev) < 0) {
		FUNC11("couldn't claim %s\n", port->name);
		goto err_unregister_dev;
	}

	device->pps = FUNC10(&info,
			PPS_CAPTUREBOTH | PPS_OFFSETASSERT | PPS_OFFSETCLEAR);
	if (FUNC0(device->pps)) {
		FUNC11("couldn't register PPS source\n");
		goto err_release_dev;
	}

	device->cw = clear_wait;

	port->ops->enable_irq(port);
	device->index = index;

	FUNC12("attached to %s\n", port->name);

	return;

err_release_dev:
	FUNC8(device->pardev);
err_unregister_dev:
	FUNC9(device->pardev);
err_free:
	FUNC2(&pps_client_index, index);
	FUNC3(device);
}