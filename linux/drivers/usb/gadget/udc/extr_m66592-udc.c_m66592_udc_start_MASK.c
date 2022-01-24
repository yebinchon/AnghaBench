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
struct usb_gadget_driver {TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct m66592 {int old_vbus; int /*<<< orphan*/  timer; int /*<<< orphan*/  scount; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  M66592_INTENB0 ; 
 int /*<<< orphan*/  M66592_INTSTS0 ; 
 int /*<<< orphan*/  M66592_MAX_SAMPLING ; 
 int M66592_URST ; 
 int M66592_VBSE ; 
 int M66592_VBSTS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct m66592*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct m66592*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 struct m66592* FUNC5 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct m66592 *m66592 = FUNC5(g);

	/* hook up the driver */
	driver->driver.bus = NULL;
	m66592->driver = driver;

	FUNC0(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);
	if (FUNC1(m66592, M66592_INTSTS0) & M66592_VBSTS) {
		FUNC2(m66592);
		/* start vbus sampling */
		m66592->old_vbus = FUNC1(m66592,
					 M66592_INTSTS0) & M66592_VBSTS;
		m66592->scount = M66592_MAX_SAMPLING;
		FUNC3(&m66592->timer, jiffies + FUNC4(50));
	}

	return 0;
}