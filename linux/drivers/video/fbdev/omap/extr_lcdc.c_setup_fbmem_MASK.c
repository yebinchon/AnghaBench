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
struct omapfb_mem_desc {int region_cnt; int /*<<< orphan*/ * region; } ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ lcdc ; 

__attribute__((used)) static int FUNC2(struct omapfb_mem_desc *req_md)
{
	if (!req_md->region_cnt) {
		FUNC1(lcdc.fbdev->dev, "no memory regions defined\n");
		return -EINVAL;
	}

	if (req_md->region_cnt > 1) {
		FUNC1(lcdc.fbdev->dev, "only one plane is supported\n");
		req_md->region_cnt = 1;
	}

	return FUNC0(&req_md->region[0]);
}