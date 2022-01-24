#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct usb_port {scalar_t__ location; int is_superspeed; TYPE_1__ dev; struct usb_port* peer; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct usb_port *left, struct usb_port *right)
{
	struct usb_port *ss_port, *hs_port;
	int rc;

	if (left->peer == right && right->peer == left)
		return 0;

	if (left->peer || right->peer) {
		struct usb_port *lpeer = left->peer;
		struct usb_port *rpeer = right->peer;
		char *method;

		if (left->location && left->location == right->location)
			method = "location";
		else
			method = "default";

		FUNC4("usb: failed to peer %s and %s by %s (%s:%s) (%s:%s)\n",
			FUNC1(&left->dev), FUNC1(&right->dev), method,
			FUNC1(&left->dev),
			lpeer ? FUNC1(&lpeer->dev) : "none",
			FUNC1(&right->dev),
			rpeer ? FUNC1(&rpeer->dev) : "none");
		return -EBUSY;
	}

	rc = FUNC5(&left->dev.kobj, &right->dev.kobj, "peer");
	if (rc)
		return rc;
	rc = FUNC5(&right->dev.kobj, &left->dev.kobj, "peer");
	if (rc) {
		FUNC6(&left->dev.kobj, "peer");
		return rc;
	}

	/*
	 * We need to wake the HiSpeed port to make sure we don't race
	 * setting ->peer with usb_port_runtime_suspend().  Otherwise we
	 * may miss a suspend event for the SuperSpeed port.
	 */
	if (left->is_superspeed) {
		ss_port = left;
		FUNC0(right->is_superspeed);
		hs_port = right;
	} else {
		ss_port = right;
		FUNC0(!right->is_superspeed);
		hs_port = left;
	}
	FUNC2(&hs_port->dev);

	left->peer = right;
	right->peer = left;

	/*
	 * The SuperSpeed reference is dropped when the HiSpeed port in
	 * this relationship suspends, i.e. when it is safe to allow a
	 * SuperSpeed connection to drop since there is no risk of a
	 * device degrading to its powered-off HiSpeed connection.
	 *
	 * Also, drop the HiSpeed ref taken above.
	 */
	FUNC2(&ss_port->dev);
	FUNC3(&hs_port->dev);

	return 0;
}