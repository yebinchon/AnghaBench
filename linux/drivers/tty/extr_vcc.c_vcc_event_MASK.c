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
struct vio_driver_state {int dummy; } ;
struct vcc_port {int /*<<< orphan*/  lock; struct vio_driver_state vio; } ;

/* Variables and functions */
 int ECONNRESET ; 
#define  LDC_EVENT_DATA_READY 130 
#define  LDC_EVENT_RESET 129 
#define  LDC_EVENT_UP 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct vcc_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct vio_driver_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct vio_driver_state*,int) ; 

__attribute__((used)) static void FUNC6(void *arg, int event)
{
	struct vio_driver_state *vio;
	struct vcc_port *port;
	unsigned long flags;
	int rv;

	port = arg;
	vio = &port->vio;

	FUNC1(&port->lock, flags);

	switch (event) {
	case LDC_EVENT_RESET:
	case LDC_EVENT_UP:
		FUNC5(vio, event);
		break;

	case LDC_EVENT_DATA_READY:
		rv = FUNC3(port);
		if (rv == -ECONNRESET)
			FUNC4(vio);
		break;

	default:
		FUNC0("VCC: unexpected LDC event(%d)\n", event);
	}

	FUNC2(&port->lock, flags);
}