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
struct wusbhc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  uwb_rc; int /*<<< orphan*/ * dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  usb_iface; } ;
struct hwahc {TYPE_1__ wa; struct wusbhc wusbhc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hwahc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC8(struct hwahc *hwahc)
{
	struct wusbhc *wusbhc = &hwahc->wusbhc;

	FUNC2(&wusbhc->mutex);
	FUNC0(&hwahc->wa);
	FUNC7(&hwahc->wusbhc);
	FUNC1(hwahc);
	hwahc->wusbhc.dev = NULL;
	FUNC6(wusbhc->uwb_rc);
	FUNC5(hwahc->wa.usb_iface);
	FUNC4(hwahc->wa.usb_dev);
	FUNC3(&wusbhc->mutex);
}