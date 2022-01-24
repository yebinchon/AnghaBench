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
struct wl1271 {scalar_t__ plt_mode; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* boot ) (struct wl1271*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PLT_FEM_DETECT ; 
 int /*<<< orphan*/  WL18XX_SCR_PAD8 ; 
 int /*<<< orphan*/  WL18XX_SCR_PAD8_PLT ; 
 int FUNC0 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl)
{
	int ret;

	/* calibrator based auto/fem detect not supported for 18xx */
	if (wl->plt_mode == PLT_FEM_DETECT) {
		FUNC1("wl18xx_plt_init: PLT FEM_DETECT not supported");
		return -EINVAL;
	}

	ret = FUNC2(wl, WL18XX_SCR_PAD8, WL18XX_SCR_PAD8_PLT);
	if (ret < 0)
		return ret;

	return wl->ops->boot(wl);
}