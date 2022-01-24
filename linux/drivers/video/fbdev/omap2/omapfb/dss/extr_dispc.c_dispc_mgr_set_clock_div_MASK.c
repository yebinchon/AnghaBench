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
struct dispc_clock_info {int /*<<< orphan*/  pck_div; int /*<<< orphan*/  lck_div; int /*<<< orphan*/  pck; int /*<<< orphan*/  lck; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(enum omap_channel channel,
		const struct dispc_clock_info *cinfo)
{
	FUNC0("lck = %lu (%u)\n", cinfo->lck, cinfo->lck_div);
	FUNC0("pck = %lu (%u)\n", cinfo->pck, cinfo->pck_div);

	FUNC1(channel, cinfo->lck_div, cinfo->pck_div);
}