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
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  venc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ venc ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC4(struct omap_dss_device *dssdev)
{
	FUNC0("venc_display_disable\n");

	FUNC1(&venc.venc_lock);

	FUNC3(dssdev);

	FUNC2(&venc.venc_lock);
}