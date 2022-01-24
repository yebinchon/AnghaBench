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
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wl1251*,int) ; 
 int FUNC1 (struct wl1251*) ; 

int FUNC2(struct wl1251 *wl)
{
	int ret;

	/* disable beacon filtering at this stage */
	ret = FUNC0(wl, false);
	if (ret < 0)
		return ret;

	ret = FUNC1(wl);
	if (ret < 0)
		return ret;

	return 0;
}