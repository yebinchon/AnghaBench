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
struct TYPE_2__ {int invert_polarity; int /*<<< orphan*/  venc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ venc ; 

__attribute__((used)) static void FUNC2(struct omap_dss_device *dssdev,
		bool invert_polarity)
{
	FUNC0(&venc.venc_lock);

	venc.invert_polarity = invert_polarity;

	FUNC1(&venc.venc_lock);
}