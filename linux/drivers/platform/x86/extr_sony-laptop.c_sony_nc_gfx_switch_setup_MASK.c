#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snc_gfx_switch_control {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  show; TYPE_1__ attr; } ;
struct TYPE_7__ {unsigned int handle; TYPE_5__ attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_IRUGO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_2__* gfxs_ctl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sony_nc_gfx_switch_status_show ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pd,
		unsigned int handle)
{
	unsigned int result;

	gfxs_ctl = FUNC2(sizeof(struct snc_gfx_switch_control), GFP_KERNEL);
	if (!gfxs_ctl)
		return -ENOMEM;

	gfxs_ctl->handle = handle;

	FUNC3(&gfxs_ctl->attr.attr);
	gfxs_ctl->attr.attr.name = "gfx_switch_status";
	gfxs_ctl->attr.attr.mode = S_IRUGO;
	gfxs_ctl->attr.show = sony_nc_gfx_switch_status_show;

	result = FUNC0(&pd->dev, &gfxs_ctl->attr);
	if (result)
		goto gfxerror;

	return 0;

gfxerror:
	FUNC1(gfxs_ctl);
	gfxs_ctl = NULL;

	return result;
}