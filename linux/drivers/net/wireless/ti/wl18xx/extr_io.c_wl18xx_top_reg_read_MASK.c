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
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct wl1271*,int,int*) ; 

int FUNC2(struct wl1271 *wl, int addr, u16 *out)
{
	u32 val = 0;
	int ret;

	if (FUNC0(addr % 2))
		return -EINVAL;

	if ((addr % 4) == 0) {
		/* address is 4-bytes aligned */
		ret = FUNC1(wl, addr, &val);
		if (ret >= 0 && out)
			*out = val & 0xffff;
	} else {
		ret = FUNC1(wl, addr - 2, &val);
		if (ret >= 0 && out)
			*out = (val & 0xffff0000) >> 16;
	}

	return ret;
}