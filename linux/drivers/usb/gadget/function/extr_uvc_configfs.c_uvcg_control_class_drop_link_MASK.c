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
struct uvcg_control_header {int /*<<< orphan*/  linked; } ;
struct uvc_descriptor_header {int dummy; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {struct config_item* ci_parent; TYPE_2__* ci_group; } ;
struct TYPE_4__ {TYPE_1__* cg_subsys; } ;
struct TYPE_3__ {struct mutex su_mutex; } ;

/* Variables and functions */
 struct config_item* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct config_item*) ; 
 struct f_uvc_opts* FUNC5 (struct config_item*) ; 
 struct uvcg_control_header* FUNC6 (struct config_item*) ; 
 struct uvc_descriptor_header** FUNC7 (struct config_item*,struct f_uvc_opts*) ; 

__attribute__((used)) static void FUNC8(struct config_item *src,
					struct config_item *target)
{
	struct config_item *control, *header;
	struct f_uvc_opts *opts;
	struct mutex *su_mutex = &src->ci_group->cg_subsys->su_mutex;
	struct uvc_descriptor_header **class_array;
	struct uvcg_control_header *target_hdr;

	FUNC2(su_mutex); /* for navigating configfs hierarchy */

	control = src->ci_parent->ci_parent;
	header = FUNC0(FUNC4(control), "header");
	if (!header || target->ci_parent != header)
		goto out;

	opts = FUNC5(control->ci_parent);

	FUNC2(&opts->lock);

	class_array = FUNC7(src, opts);
	if (!class_array || opts->refcnt)
		goto unlock;

	target_hdr = FUNC6(target);
	--target_hdr->linked;
	class_array[0] = NULL;

unlock:
	FUNC3(&opts->lock);
out:
	FUNC1(header);
	FUNC3(su_mutex);
}