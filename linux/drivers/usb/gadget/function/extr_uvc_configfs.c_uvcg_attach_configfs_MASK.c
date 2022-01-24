#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  group; } ;
struct f_uvc_opts {TYPE_1__ func_inst; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__ uvc_func_type ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC3(struct f_uvc_opts *opts)
{
	int ret;

	FUNC0(&opts->func_inst.group, uvc_func_type.name,
				    &uvc_func_type.type);

	ret = FUNC2(&opts->func_inst.group,
					  &uvc_func_type);
	if (ret < 0)
		FUNC1(&opts->func_inst.group);

	return ret;
}