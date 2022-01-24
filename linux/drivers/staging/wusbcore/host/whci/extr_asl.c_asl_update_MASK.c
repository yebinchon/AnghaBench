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
typedef  int /*<<< orphan*/  uint32_t ;
struct wusbhc {int /*<<< orphan*/  mutex; scalar_t__ active; } ;
struct whc {scalar_t__ base; int /*<<< orphan*/  async_list_wq; struct wusbhc wusbhc; } ;

/* Variables and functions */
 scalar_t__ WUSBCMD ; 
 int WUSBCMD_ASYNC_UPDATED ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct whc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct whc *whc, uint32_t wusbcmd)
{
	struct wusbhc *wusbhc = &whc->wusbhc;
	long t;

	FUNC2(&wusbhc->mutex);
	if (wusbhc->active) {
		FUNC6(whc, wusbcmd, wusbcmd);
		t = FUNC4(
			whc->async_list_wq,
			(FUNC0(whc->base + WUSBCMD) & WUSBCMD_ASYNC_UPDATED) == 0,
			FUNC1(1000));
		if (t == 0)
			FUNC5(whc, "ASL update timeout");
	}
	FUNC3(&wusbhc->mutex);
}