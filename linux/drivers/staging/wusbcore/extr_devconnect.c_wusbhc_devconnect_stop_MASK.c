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
struct wusbhc {int ports_max; TYPE_1__* wuie_host_info; int /*<<< orphan*/  keep_alive_timer; int /*<<< orphan*/  mutex; TYPE_2__* port; } ;
struct TYPE_4__ {scalar_t__ wusb_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wusbhc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wusbhc*,int /*<<< orphan*/ *) ; 

void FUNC6(struct wusbhc *wusbhc)
{
	int i;

	FUNC3(&wusbhc->mutex);
	for (i = 0; i < wusbhc->ports_max; i++) {
		if (wusbhc->port[i].wusb_dev)
			FUNC0(wusbhc, &wusbhc->port[i]);
	}
	FUNC4(&wusbhc->mutex);

	FUNC1(&wusbhc->keep_alive_timer);
	FUNC5(wusbhc, &wusbhc->wuie_host_info->hdr);
	FUNC2(wusbhc->wuie_host_info);
	wusbhc->wuie_host_info = NULL;
}