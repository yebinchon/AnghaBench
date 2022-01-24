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
struct wusbhc {int dummy; } ;
struct wusb_dev {int port_idx; int /*<<< orphan*/  addr; int /*<<< orphan*/  availability; } ;
struct whc {int /*<<< orphan*/  mutex; struct di_buf_entry* di_buf; } ;
struct di_buf_entry {int addr_sec_info; int /*<<< orphan*/  availability_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int WHC_DI_DEV_ADDR_MASK ; 
 int WHC_DI_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct whc*,int) ; 
 struct whc* FUNC5 (struct wusbhc*) ; 

int FUNC6(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
	struct whc *whc = FUNC5(wusbhc);
	int idx = wusb_dev->port_idx;
	struct di_buf_entry *di = &whc->di_buf[idx];
	int ret;

	FUNC1(&whc->mutex);

	FUNC3(di->availability_info, &wusb_dev->availability);
	di->addr_sec_info &= ~(WHC_DI_DISABLE | WHC_DI_DEV_ADDR_MASK);
	di->addr_sec_info |= FUNC0(wusb_dev->addr);

	ret = FUNC4(whc, idx);

	FUNC2(&whc->mutex);

	return ret;
}