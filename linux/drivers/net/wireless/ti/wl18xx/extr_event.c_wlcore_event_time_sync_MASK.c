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
typedef  int u32 ;
typedef  int u16 ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 

__attribute__((used)) static void FUNC1(struct wl1271 *wl,
				   u16 tsf_high_msb, u16 tsf_high_lsb,
				   u16 tsf_low_msb, u16 tsf_low_lsb)
{
	u32 clock_low;
	u32 clock_high;

	clock_high = (tsf_high_msb << 16) | tsf_high_lsb;
	clock_low = (tsf_low_msb << 16) | tsf_low_lsb;

	FUNC0("TIME_SYNC_EVENT_ID: clock_high %u, clock low %u",
		    clock_high, clock_low);
}