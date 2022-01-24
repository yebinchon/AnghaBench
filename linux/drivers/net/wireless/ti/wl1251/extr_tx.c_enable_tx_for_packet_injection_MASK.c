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
struct wl1251 {int joined; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  JOIN_EVENT_COMPLETE_ID ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wl1251*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct wl1251 *wl)
{
	int ret;

	ret = FUNC0(wl, BSS_TYPE_STA_BSS, wl->channel,
			      wl->beacon_int, wl->dtim_period);
	if (ret < 0) {
		FUNC2("join failed");
		return;
	}

	ret = FUNC1(wl, JOIN_EVENT_COMPLETE_ID, 100);
	if (ret < 0) {
		FUNC2("join timeout");
		return;
	}

	wl->joined = true;
}