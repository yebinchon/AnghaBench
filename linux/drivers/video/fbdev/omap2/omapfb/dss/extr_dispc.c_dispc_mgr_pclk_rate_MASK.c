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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {unsigned long tv_pclk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ dispc ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static unsigned long FUNC5(enum omap_channel channel)
{
	unsigned long r;

	if (FUNC4(channel)) {
		int pcd;
		u32 l;

		l = FUNC3(FUNC0(channel));

		pcd = FUNC1(l, 7, 0);

		r = FUNC2(channel);

		return r / pcd;
	} else {
		return dispc.tv_pclk_rate;
	}
}