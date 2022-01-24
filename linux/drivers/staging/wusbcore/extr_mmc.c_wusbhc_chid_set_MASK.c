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
struct wusb_ckhdid {int dummy; } ;
struct wusbhc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * uwb_rc; int /*<<< orphan*/  pal; TYPE_1__* dev; struct wusb_ckhdid chid; scalar_t__ active; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (struct wusb_ckhdid const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wusb_ckhdid_zero ; 
 int FUNC8 (struct wusbhc*) ; 

int FUNC9(struct wusbhc *wusbhc, const struct wusb_ckhdid *chid)
{
	int result = 0;

	if (FUNC1(chid, &wusb_ckhdid_zero, sizeof(*chid)) == 0)
		chid = NULL;

	FUNC2(&wusbhc->mutex);
	if (chid) {
		if (wusbhc->active) {
			FUNC3(&wusbhc->mutex);
			return -EBUSY;
		}
		wusbhc->chid = *chid;
	}

	/* register with UWB if we haven't already since we are about to start
	    the radio. */
	if ((chid) && (wusbhc->uwb_rc == NULL)) {
		wusbhc->uwb_rc = FUNC6(wusbhc->dev->parent);
		if (wusbhc->uwb_rc == NULL) {
			result = -ENODEV;
			FUNC0(wusbhc->dev,
				"Cannot get associated UWB Host Controller\n");
			goto error_rc_get;
		}

		result = FUNC8(wusbhc);
		if (result < 0) {
			FUNC0(wusbhc->dev, "Cannot register as a UWB PAL\n");
			goto error_pal_register;
		}
	}
	FUNC3(&wusbhc->mutex);

	if (chid)
		result = FUNC4(&wusbhc->pal);
	else if (wusbhc->uwb_rc)
		FUNC5(&wusbhc->pal);

	return result;

error_pal_register:
	FUNC7(wusbhc->uwb_rc);
	wusbhc->uwb_rc = NULL;
error_rc_get:
	FUNC3(&wusbhc->mutex);

	return result;
}