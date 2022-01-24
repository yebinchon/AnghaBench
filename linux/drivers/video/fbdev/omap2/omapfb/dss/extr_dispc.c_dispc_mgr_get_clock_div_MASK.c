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
struct dispc_clock_info {unsigned long lck_div; int pck_div; unsigned long lck; int pck; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 unsigned long FUNC2 () ; 

int FUNC3(enum omap_channel channel,
		struct dispc_clock_info *cinfo)
{
	unsigned long fck;

	fck = FUNC2();

	cinfo->lck_div = FUNC1(FUNC0(channel), 23, 16);
	cinfo->pck_div = FUNC1(FUNC0(channel), 7, 0);

	cinfo->lck = fck / cinfo->lck_div;
	cinfo->pck = cinfo->lck / cinfo->pck_div;

	return 0;
}