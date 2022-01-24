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
struct zd_usb {int initialized; } ;
struct zd_mac {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct zd_usb*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*) ; 
 struct zd_mac* FUNC6 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC7 (struct zd_usb*) ; 

int FUNC8(struct zd_usb *usb)
{
	int r;
	struct zd_mac *mac = FUNC6(usb);

	FUNC0(FUNC5(usb), "\n");

	r = FUNC2(usb);
	if (r) {
		FUNC1(FUNC5(usb),
		       "couldn't load firmware. Error number %d\n", r);
		return r;
	}

	r = FUNC3(FUNC7(usb));
	if (r) {
		FUNC0(FUNC5(usb),
			"couldn't reset configuration. Error number %d\n", r);
		return r;
	}

	r = FUNC4(mac->hw);
	if (r) {
		FUNC0(FUNC5(usb),
		         "couldn't initialize mac. Error number %d\n", r);
		return r;
	}

	usb->initialized = 1;
	return 0;
}