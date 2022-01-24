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
struct TYPE_2__ {int /*<<< orphan*/  hdr; } ;
struct wusbhc {TYPE_1__ cack_ie; scalar_t__ cack_count; } ;
struct wusb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wusbhc*,struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct wusbhc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wusbhc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC3(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
	FUNC0(wusbhc, wusb_dev);
	if (wusbhc->cack_count)
		FUNC2(wusbhc, 0, 0, &wusbhc->cack_ie.hdr);
	else
		FUNC1(wusbhc, &wusbhc->cack_ie.hdr);
}