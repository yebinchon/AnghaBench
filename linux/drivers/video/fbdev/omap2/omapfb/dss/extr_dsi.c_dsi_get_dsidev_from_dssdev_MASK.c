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
struct platform_device {int dummy; } ;
struct omap_dss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct platform_device *FUNC1(struct omap_dss_device *dssdev)
{
	return FUNC0(dssdev->dev);
}