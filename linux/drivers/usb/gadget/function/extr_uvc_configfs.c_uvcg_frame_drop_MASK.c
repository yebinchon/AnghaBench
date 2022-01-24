#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uvcg_format {int /*<<< orphan*/  num_frames; } ;
struct f_uvc_opts {int /*<<< orphan*/  lock; } ;
struct config_item {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ci_parent; } ;
struct config_group {TYPE_3__ cg_item; } ;
struct TYPE_5__ {TYPE_1__* ci_parent; } ;
struct TYPE_4__ {struct config_item* ci_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct f_uvc_opts* FUNC3 (struct config_item*) ; 
 struct uvcg_format* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct config_group *group, struct config_item *item)
{
	struct uvcg_format *fmt;
	struct f_uvc_opts *opts;
	struct config_item *opts_item;

	opts_item = group->cg_item.ci_parent->ci_parent->ci_parent;
	opts = FUNC3(opts_item);

	FUNC1(&opts->lock);
	fmt = FUNC4(&group->cg_item);
	--fmt->num_frames;
	FUNC2(&opts->lock);

	FUNC0(item);
}