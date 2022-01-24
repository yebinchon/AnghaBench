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
struct wl1271 {scalar_t__ plt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*) ; 

void FUNC3(struct wl1271 *wl)
{
	if (wl->plt) {
		FUNC1("Got DUMMY_PACKET event in PLT mode.  FW bug, ignoring.");
		return;
	}

	FUNC0(DEBUG_EVENT, "DUMMY_PACKET_ID_EVENT_ID");
	FUNC2(wl);
}