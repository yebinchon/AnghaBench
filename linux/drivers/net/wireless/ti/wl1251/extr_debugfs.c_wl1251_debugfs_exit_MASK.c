#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * rootdir; int /*<<< orphan*/ * fw_statistics; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fw_stats; } ;
struct wl1251 {TYPE_2__ debugfs; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1251*) ; 

void FUNC3(struct wl1251 *wl)
{
	FUNC2(wl);

	FUNC1(wl->stats.fw_stats);
	wl->stats.fw_stats = NULL;

	FUNC0(wl->debugfs.fw_statistics);
	wl->debugfs.fw_statistics = NULL;

	FUNC0(wl->debugfs.rootdir);
	wl->debugfs.rootdir = NULL;

}