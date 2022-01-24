#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wusbhc {int trust_timeout; int /*<<< orphan*/  keep_alive_timer; struct wuie_host_info* wuie_host_info; int /*<<< orphan*/  chid; TYPE_1__* rsv; struct device* dev; } ;
struct TYPE_4__ {int bLength; int /*<<< orphan*/  bIEIdentifier; } ;
struct wuie_host_info {TYPE_2__ hdr; int /*<<< orphan*/  CHID; int /*<<< orphan*/  attributes; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int stream; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WUIE_HI_CAP_ALL ; 
 int /*<<< orphan*/  WUIE_ID_HOST_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wuie_host_info*) ; 
 struct wuie_host_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wusbd ; 
 int FUNC6 (struct wusbhc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC7(struct wusbhc *wusbhc)
{
	struct device *dev = wusbhc->dev;
	struct wuie_host_info *hi;
	int result;

	hi = FUNC3(sizeof(*hi), GFP_KERNEL);
	if (hi == NULL)
		return -ENOMEM;

	hi->hdr.bLength       = sizeof(*hi);
	hi->hdr.bIEIdentifier = WUIE_ID_HOST_INFO;
	hi->attributes        = FUNC0((wusbhc->rsv->stream << 3) | WUIE_HI_CAP_ALL);
	hi->CHID              = wusbhc->chid;
	result = FUNC6(wusbhc, 0, 0, &hi->hdr);
	if (result < 0) {
		FUNC1(dev, "Cannot add Host Info MMCIE: %d\n", result);
		goto error_mmcie_set;
	}
	wusbhc->wuie_host_info = hi;

	FUNC5(wusbd, &wusbhc->keep_alive_timer,
			   FUNC4(wusbhc->trust_timeout / 2));

	return 0;

error_mmcie_set:
	FUNC2(hi);
	return result;
}