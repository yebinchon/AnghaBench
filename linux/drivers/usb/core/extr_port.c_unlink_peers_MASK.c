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
struct usb_port {TYPE_1__ dev; struct usb_port* peer; scalar_t__ is_superspeed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5(struct usb_port *left, struct usb_port *right)
{
	struct usb_port *ss_port, *hs_port;

	FUNC0(right->peer != left || left->peer != right,
			"%s and %s are not peers?\n",
			FUNC1(&left->dev), FUNC1(&right->dev));

	/*
	 * We wake the HiSpeed port to make sure we don't race its
	 * usb_port_runtime_resume() event which takes a SuperSpeed ref
	 * when ->peer is !NULL.
	 */
	if (left->is_superspeed) {
		ss_port = left;
		hs_port = right;
	} else {
		ss_port = right;
		hs_port = left;
	}

	FUNC2(&hs_port->dev);

	FUNC4(&left->dev.kobj, "peer");
	right->peer = NULL;
	FUNC4(&right->dev.kobj, "peer");
	left->peer = NULL;

	/* Drop the SuperSpeed ref held on behalf of the active HiSpeed port */
	FUNC3(&ss_port->dev);

	/* Drop the ref taken above */
	FUNC3(&hs_port->dev);
}