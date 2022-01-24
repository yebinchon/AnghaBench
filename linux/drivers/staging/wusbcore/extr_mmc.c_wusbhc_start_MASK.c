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
struct wusbhc {int (* set_num_dnts ) (struct wusbhc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dnts_num_slots; int /*<<< orphan*/  dnts_interval; int /*<<< orphan*/ * uwb_rc; int /*<<< orphan*/ * wuie_host_info; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct wusbhc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC5 (struct wusbhc*) ; 
 int FUNC6 (struct wusbhc*) ; 
 int FUNC7 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC8 (struct wusbhc*) ; 
 int FUNC9 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC10 (struct wusbhc*) ; 

int FUNC11(struct wusbhc *wusbhc)
{
	int result;
	struct device *dev = wusbhc->dev;

	FUNC1(wusbhc->wuie_host_info != NULL);
	FUNC0(wusbhc->uwb_rc == NULL);

	result = FUNC7(wusbhc);
	if (result < 0) {
		FUNC2(dev, "cannot establish cluster reservation: %d\n",
			result);
		goto error_rsv_establish;
	}

	result = FUNC4(wusbhc);
	if (result < 0) {
		FUNC2(dev, "error enabling device connections: %d\n",
			result);
		goto error_devconnect_start;
	}

	result = FUNC9(wusbhc);
	if (result < 0) {
		FUNC2(dev, "error starting security in the HC: %d\n",
			result);
		goto error_sec_start;
	}

	result = wusbhc->set_num_dnts(wusbhc, wusbhc->dnts_interval,
		wusbhc->dnts_num_slots);
	if (result < 0) {
		FUNC2(dev, "Cannot set DNTS parameters: %d\n", result);
		goto error_set_num_dnts;
	}
	result = FUNC6(wusbhc);
	if (result < 0) {
		FUNC2(dev, "error starting wusbch: %d\n", result);
		goto error_wusbhc_start;
	}

	return 0;

error_wusbhc_start:
	FUNC10(wusbhc);
error_set_num_dnts:
error_sec_start:
	FUNC5(wusbhc);
error_devconnect_start:
	FUNC8(wusbhc);
error_rsv_establish:
	return result;
}