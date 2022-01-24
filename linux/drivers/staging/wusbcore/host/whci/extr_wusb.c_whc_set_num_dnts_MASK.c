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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct wusbhc {int dummy; } ;
struct whc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WUSBDNTSCTRL ; 
 int WUSBDNTSCTRL_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct whc* FUNC3 (struct wusbhc*) ; 

int FUNC4(struct wusbhc *wusbhc, u8 interval, u8 slots)
{
	struct whc *whc = FUNC3(wusbhc);
	u32 dntsctrl;

	dntsctrl = WUSBDNTSCTRL_ACTIVE
		| FUNC0(interval)
		| FUNC1(slots);

	FUNC2(dntsctrl, whc->base + WUSBDNTSCTRL);

	return 0;
}